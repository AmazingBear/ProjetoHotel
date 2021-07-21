from django.shortcuts import render
import conexao
c = conexao.conectar()


def indexreserva(request):
    with c.cursor() as selecionar:
        sql = 'select * from tbreserva'
        selecionar.execute(sql)
        dados = selecionar.fetchall()
    return render(request, 'reservas/index.html', {'reservas':dados})

def formularioreserva(request):
    return render(request, 'reservas/form_reservas.html')

def insere_reserva(request):
    #obtendo os dados do formulário de cliente
    cpf = request.POST.get('cpf')
    quarto = request.POST.get('quarto')
    telefone = request.POST.get('telefone')
    pessoas = request.POST.get('pessoas')

    with c.cursor() as inserir:
        sql = 'insert into tbreserva(cpf,quarto,telefone,pessoas)values(%s,%s,%s,%s)'
        inserir.execute(sql,(cpf,quarto,telefone,pessoas))
        c.commit()
    return render(request, 'reservas/form_reservas.html')

def deleta_reserva(request, id):
    with c.cursor() as deletar:
        sql = 'DELETE FROM tbreserva WHERE id = %s'
        deletar.execute(sql, id)
        c.commit()
    return render(request, 'reservas/index.html')


