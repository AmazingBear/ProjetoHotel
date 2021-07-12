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

def delete_cliente(self, id):
    with self.conn.cursor() as cursor:
        query = 'delete from tbdetalhematricula where id = %s'
        cursor.execute(query, (id))
        self.conn.commit()
        self.conn.close()