import uvicorn

if __name__ == '__main__':
    
    uvicorn.run(
        app="application.main:app",
        host="127.0.0.1",
        port=9990,
        reload=True,
        log_level="info",
        ssl_certfile='./cert/server.crt',
        ssl_keyfile='./cert/server.key',
        timeout_keep_alive=60,
    )
