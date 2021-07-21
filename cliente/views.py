from django.shortcuts import render
import conexao
c = conexao.conectar()


def index(request):
    with c.cursor() as selecionar:
        sql = 'select * from tbcliente'
        selecionar.execute(sql)
        dados = selecionar.fetchall()
    return render(request, 'cliente/index.html', {'clientes':dados})

def formulario(request):
    return render(request, 'cliente/form_cliente.html')

def insere_cliente(request):
    #obtendo os dados do formulário de cliente
    nome = request.POST.get('nome')
    telefone = request.POST.get('telefone')
    email = request.POST.get('email')
    cpf = request.POST.get('cpf')

    with c.cursor() as inserir:
        sql = 'insert into tbcliente(nome,telefone,email,cpf)values(%s,%s,%s,%s)'
        inserir.execute(sql,(nome,telefone,email,cpf))
        c.commit()
    return render(request, 'cliente/form_cliente.html')

def deleta_cliente(request, id):
    with c.cursor() as deletar:
        sql = 'DELETE FROM tbcliente WHERE id = %s'
        deletar.execute(sql, id)
        c.commit()
    return render(request, 'cliente/index.html')