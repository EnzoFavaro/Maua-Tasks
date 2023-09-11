import wget
import os
import vobject
from pymongo.mongo_client import MongoClient
from pymongo.server_api import ServerApi
from pymongo.collection import *
from pymongo.common import *



def downloadCalendario(userId, authToken):
    try:
        if os.path.exists("calendario.ics"):
            os.remove("calendario.ics")
        wget.download(f'https://imt.myopenlms.net/calendar/export_execute.php?userid={userId}&authtoken={authToken}&preset_what=all&preset_time=recentupcoming','calendario.ics')
        print("\nDownload concluido com sucesso!")
    except Exception as e:
        print("Download falhou:"+ e)

def processarCalendario():

    password = "3zlRt8m9Y0HLqI75"
    uri = f'mongodb+srv://enzofavaro10:{password}@cluster0.uy9baei.mongodb.net/?retryWrites=true&w=majority'

    client = MongoClient(uri, server_api=ServerApi('1'))

    try:
        if client.admin.command('ping'):
            db = client["MauaTasks"]
            colletion = db["events"]
            colletion.create_index( { 'curso': 1, 'sumario': 1, 'descricao': 1, 'dataIni': 1, 'dataFim': 1 }, {unique:true} )
            data = open("calendario.ics").read()
            for cal in vobject.readComponents(data):
                for component in cal.components():
                    if component.name == "VEVENT":
                        tarefa = {
                            "tipo": "tarefa",
                            'curso': component.categories.valueRepr()[0],
                            'sumario': component.summary.valueRepr(),
                            'descricao': component.description.valueRepr(),
                            'dataIni' :'',
                            'dataFim':'',
                            'status': 'Em dia'
                        }
                        colletion.insert_one(tarefa)
    except Exception as e:
        print(e)

# tipo (evento, tarefa, prova, etc.)
# curso (TTI205, TTI206. CATEGORIES)
# sumario (descrição rapida. SUMMARY)
# descrição (descrição detalhada. DESCRIPTION)
# dataIni (data de inicio. DTSTART)
# dataFim (data de encerramento. DTEND)
# status (atrasado, em dia)


#downloadCalendario(15673, 'a9e4254f4fabe8f3d811e6253879af88814b7c69')
processarCalendario()