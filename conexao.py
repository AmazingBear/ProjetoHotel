import pymysql

def conectar():
    conn = pymysql.connect(
        host='localhost',
        user='root',
        password='',
        database='hotel',
        cursorclass=pymysql.cursors.DictCursor,
    )
    return conn