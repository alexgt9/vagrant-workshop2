import 'stages.pp'

class{ workshop::repos: 
	stage => 'init',
}
class{ workshop: }
class{ workshop::webserver: }