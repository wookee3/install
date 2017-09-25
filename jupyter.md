* install
```
sudo pip install jupyter
```

* configuration - https://www.slideshare.net/HyunsikYoo/ipython-serverjupyter-server
  * configuration 파일 생성
```
jupyter notebook --generate-config
```
  * 비밀번호 설정
```
ipython
passwd()
비밀번호 입력
암호화된 비밀번호 복사
exit()
`

  * 옵션 설정
```
c.NotebookApp.password = u'복사한 값'

# c.InteractiveShellApp.matplotlib = 'inline'
# c.InteractiveShellApp.pylab = 'inline'

c.NotebookApp.ip = '*'
c.NotebookApp.port = 9999
c.NotebookApp.open_browser = False
```
