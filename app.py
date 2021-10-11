from typing import List
from flask import Flask, render_template, url_for,app,request, make_response,flash,redirect,session
from conexiondb import conexiondb
import controller
import canciones 
app = Flask(__name__)

@app.route("/")
def PaginaInicio():
    return render_template("index.html")

@app.route("/tablaadmin.html")   
def Administradores(Admins=None):
    
    try:
        Admins= controller.LeerDatosAdmin()
        print("Se conecto exitosamente a la base de datos")
    except:
        print("No se conecto a la base de datos")
    return render_template("tablaadmin.html",Admins=Admins)

@app.route("/tablacancion.html")


def Canciones(Listacanciones=None):
    
    try:
        Listacanciones= controller.LeerDatos()
        print("Se conecto exitosamente a la base de datos")
    except:
        print("No se conecto a la base de datos")
    return render_template("tablacancion.html",Listacanciones=Listacanciones)


###########################################################################################################
###############################################################################################################
#####################################
#
#



@app.route("/escritorio")
def escritorio():
    return render_template("escritorio.html")

# Formulario para iniciar sesión


@app.route("/login")
def login():
    return render_template("login.html")

# Manejar login


@app.route("/hacer_login", methods=["POST"])
def hacer_login(Admins=None,CONT=None,CORR=None):
    correo = request.form["correo"]
    Admins=controller.LeerDatosAdmin()
    
    palabra_secreta = request.form["palabra_secreta"]
    # Aquí comparamos. Lo hago así de fácil por simplicidad
    # En la vida real debería ser con una base de datos y una contraseña hasheada
    for db in Admins:
        if db[3]==palabra_secreta:
            CONT=11
        if db[2]==correo:
            CORR=1
        
    if CORR==1 and CONT==11:
        # Si coincide, iniciamos sesión y además redireccionamos
        # Aquí puedes colocar más datos. Por ejemplo
        # session["nivel"] = "administrador"
        return render_template("escritorio.html", Admins=Admins, CONT= CONT)
    else:
        # Si NO coincide, lo regresamos
        flash("Correo o contraseña incorrectos")
        print("No se pudo ")
        return render_template("login.html")


# Cerrar sesión
@app.route("/logout")
def logout():
    session.pop()
    return render_template("login.html")

menu='''\n****************************
*       MENU CANCIONES        *
****************************
*                          *
*  i) Insertar Canción     *
*  e) Eliminar Canción     *
*  m) Modificar Canción    *
*  p) Imprimir Canciones   *
*  x) Salir                *
*                          *
****************************'''
@app.route("/")

def main():

    opcion='0'
    while opcion !='X':
        print(menu)
        opcion = input("¿Que opción deseas?: ").upper()
        print()
        if opcion == 'I':
            print("*****  Insertar Canción  *****")
            NombreCancion = input("Introduce el nombre de la nueva canción: ")
            NombreArtista = input("Introduce el nombre del artista: ")
            GeneroCancion = input("Introduce el género: ")
            AnioPubli = input("Introduce el año de publicación: ")
            EnlaceCancion = input("Introduce el enlace: ")
            r = canciones.inserta_cancion(NombreCancion,NombreArtista,GeneroCancion,AnioPubli,EnlaceCancion)
            if(r==0):
                print("-> No se pudo insertar la canción...")
            else:
                print("-> La canción se insertó correctamente")
        elif opcion == 'E':
            print("*****  Eliminar Canción  *****")
            IdCan = int(input("Introduce el Id de la canción que desea eliminar: "))
            r = canciones.elimina_cancion(IdCan)
            if(r==0):
                print("-> La canción con ese Id no existe")
            else:
                print("-> La canción se eliminó correctamente")
        elif opcion == 'M':
            print("*****  Modificar Canción  *****")
            IdCan = int(input("Introduce el Id de la canción que desea modificar: "))
            cancionmod = canciones.buscar_id(IdCan)
            if cancionmod == None:
                print("-> La canción con ese Id no existe")
            else:
                print("*** Canción a modificar: ")
                print(cancionmod)
                print()
                NombreCancion = input("Introduce el nuevo nombre de la canción: ")
                NombreArtista = input("Introduce el nuevo nombre del  artista: ")
                GeneroCancion = input("Introduce el nuevo genero de la cancion: ")
                AnioPubli = input("Introduce el nuevo año de publicación: ")
                EnlaceCancion = input("Introduce el nuevo enlace de la canción: ")
                r = canciones.modifica_cancion(IdCan,NombreCancion,NombreArtista,GeneroCancion,AnioPubli,EnlaceCancion)
                if(r==0):
                    print("-> Error al modificar la canción...")
                else:
                    print("-> La canción se modificó correctamente")

        elif opcion == 'P':
            print("*****  Imprimir Canciones  *****")
            canciones.consulta_canciones()
        elif opcion == 'X':
            print("-> Saliendo del sistema")
        else:            
            print("-> Opción no válida")



"""
 Un "middleware" que se ejecuta antes de responder a cualquier ruta. Aquí verificamos si el usuario ha iniciado sesión
@app.before_request
def antes_de_cada_peticion():
    ruta = request.path
    # Si no ha iniciado sesión y no quiere ir a algo relacionado al login, lo redireccionamos al login
    if not 'usuario' in session and ruta != "/login" and ruta != "/hacer_login" and ruta != "/logout" and not ruta.startswith("/static"):
        flash("Inicia sesión para continuar")
        return redirect("/login")
    # Si ya ha iniciado, no hacemos nada, es decir lo dejamos pasar
"""

# Iniciar el servidor

if __name__ == '__main__':

    app.run(debug=True)
