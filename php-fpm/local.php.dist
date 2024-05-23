<?php
return [
//    'statuslib' => [
//        'array_mapper_path' => 'data/statuslib.php',
//    ],
    'db' => [
        'adapters' => [
            'SIMpelAdapter' => [
                'database' => 'aplikasi',
                'driver' => 'PDO_Mysql',
                'hostname' => 'mysql',
                'username' => 'admin',
                'password' => 'S!MGos2@kemkes.go.id',
            ],
            'BPJSAdapter' => [
                'driver' => 'Pdo_Mysql',
                'database' => 'bpjs',
                'hostname' => 'mysql',
                'username' => 'admin',
                'password' => 'S!MGos2@kemkes.go.id',
            ],
            'INACBGAdapter' => [
                'driver' => 'Pdo_Mysql',
                'database' => 'inacbg',
                'hostname' => 'mysql',
                'username' => 'admin',
                'password' => 'S!MGos2@kemkes.go.id',
            ],
            'WinacomAdapter' => [
                'database' => 'lis_bridging',
                'driver' => 'PDO_Mysql',
                'hostname' => '',
                'username' => '',
                'password' => '',
            ],
        ],
    ],
    'services' => [
        'enableCaptcha' => false,
        'SIMpelService' => [
            'instansi' => [
                'id' => '7371325',
            ],
            'plugins' => [
                'ReportService' => [
                    'route' => [
                        '127.0.0' => '127.0.0.1',
						'192.168.137' => '192.168.137.2',
						'simgos.kemkes.go' => 'simgos.kemkes.go.id',
                    ],
                    'url' => 'http://[HOST]/webservice/report?requestReport=',
                    'key' => 'b14ba5e1e0073125e3fe2d228a35b04fc7c39caae08245e3ca46049358b73e43',
                ],
                'BPJS' => [
                    'url' => 'http://127.0.0.1/webservice/bpjservice',
                    'koders' => '1801R001',
                ],
                'INACBG' => [
                    'url' => 'http://127.0.0.1/webservice/inacbgservice',
                    'koders' => '7371325',
                ],
                'Kemkes' => [
                    'url' => 'http://127.0.0.1/webservice/kemkes',
                    'koders' => '7371325',
                ],
                'Dukcapil' => [
                    'url' => 'http://127.0.0.1/webservice/dukcapil/service',
                    'koders' => '7371325',
                ],
                'Pusdatin' => [
                    'url' => 'http://127.0.0.1/webservice/pusdatin/adminduk',
                    'koders' => '7371325',
                ],
                'TTS' => [
                    'url' => 'http://127.0.0.1/webservice/tts',
                    'koders' => '7371325',
                ],
                'printdoc' => [
                    "id" => "5a388f36-7d1d-11ed-8e6a-000c290e37a2"
                ],
                /* Digunakan jika server report terpisah */
                'Plugins' => [
                    'url' => 'http://[SERVER_REPORT]/webservice/plugins',
                    'remote' => false,
                ],
            ],
        ],
        'PenjaminRS' => [
            2 => [
                'url' => 'http://127.0.0.1/webservice/bpjservice',
            ],
        ],
        'ReportService' => [
            'db' => [
                'driver' => 'com.mysql.cj.jdbc.Driver',
                'driverManager' => 'java.sql.DriverManager',
                'connectionStrings' => [
                    0 => 'jdbc:mysql://mysql:3306/aplikasi?serverTimezone=Asia/Jakarta&user=admin&password=S!MGos2@kemkes.go.id',
                ],
                \locale::class => [
                    0 => 'in',
                    1 => 'ID',
                ],
            ],
            'javaBridge' => [
                'location' => 'http://tomcat:8080/JavaBridge/java/Java.inc',
            ],
            'key' => 'b14ba5e1e0073125e3fe2d228a35b04fc7c39caae08245e3ca46049358b73e43',
            'DocumentStorage' => [
                "url" => "http://localhost/webservice/document-storage",
                "verifikasi" => [
                    "url" => "",
                ], 
            ],
            'tte' => [
                "url" => 'http://localhost/webservice/tte',
                'timeout' => 10,
            ],
        ],
        'BPJService' => [
            'url' => 'https://apijkn-dev.bpjs-kesehatan.go.id/vclaim-rest-dev',
			'id' => '[CONSUMER ID DARI BPJS]',
			'key' => '[CONSUMER SECRET DARI BPJS]',
            'userKey' => '[USER KEY DARI BPJS]',
			'timezone' => 'UTC',
			'addTime' => 'PT0M',
			'koders' => '1801R001',
			/* untuk menggunakan versi ws bpjs 
			 * name : Nama Web Service
			 * value: "" = "Sep" | "VClaim" = "VClaim"
			 */
			'name' => 'VClaim',
			'version' => '2.0',
            'writeLog' => false,
						
			'aplicares' => [
				'url' => 'http://dvlp.bpjs-kesehatan.go.id:9080/aplicaresws/rest',
				'id' => '{CONSUMER SECRET DARI BPJS}',
				'key' => '{CONSUMER SECRET DARI BPJS}',
                'koders' => '1801R001',
                'timezone' => 'UTC',
				'addTime' => 'PT0M',
                'writeLog' => false,
			],

            'finger' => [
                'app' => [
                    'username' => '[USERNAME APLIKASI FINGER BPJS]',
                    'password' => '[PASSWORD APLIKASI FINGER BPJS]',
                    'waitLogin' => 2000,
                    'waitInputNomor' => 2000,
                    'waitFinger' => 6000,
                    'windowExit' => 1,
                ],
            ],

            'icare' => [
                'url' => 'https://apijkn-dev.bpjs-kesehatan.go.id/ihs_dev/api/rs'
            ],
        ],
        'INACBGService' => [
			'koders' => '7371325',
			"5" => [
				"non spesifik" => [
					'url' => 'http://[IP/HOST]/E-Klaim/ws.php',
					'user' => '[USER NAME INACBG | OPTIONAL]',
					'pwd' => '[PASSWORD INACBG | OPTIONAL]',
					'koders' => '7371325',
					'key' => '[ENCRYPT KEY DARI APLIKASI E-KLAIM]',
					'kode_tarif' => '[KODE TARIF RS]',
					'version' => [
						"minor" => 2
					],
                    'writeLog' => false,
				],
			],
        ],
        'KemkesService' => [
            'url' => 'http://sirs.yankes.kemkes.go.id/sirsservice',
            'id' => '7371325',
            'key' => '[PASSWORD DARI KEMKES]',
            'writeLog' => false,
            'Dashboard' => [
                'url' => "http://103.74.143.46/test/sirsservice",
                'id' => '7371325',
                'key' => '[PASSWORD DARI KEMKES]',
                'writeLog' => false,
            ],
            'Sisrute' => [
                'url' => "http://api.dvlp.sisrute.kemkes.go.id",
                'id' => '7371325',
                'pass' => '[PASSWORD DARI KEMKES]',
                'writeLog' => false,
            ],
            'RsOnline' => [
                'url' => 'http://sirs.yankes.kemkes.go.id/fo/index.php',
                'id' => '7371325',
                'key' => '[PASSWORD DARI KEMKES]',
                'writeLog' => false,
            ],
            'SITB' => [
                'url' => 'http://sirs.yankes.kemkes.go.id/sirsservice/sitbtraining/sitb',
                'id' => '7371325',
                'key' => '[PASSWORD DARI KEMKES]',
                'writeLog' => false,
            ],
            "IHS" => [
                "organization_id" => "ID DIBERIKAN OLEH DTO KEMENKES",
                "id" => "ID DIBERIKAN OLEH DTO KEMENKES",
                "secret" => "SECRET DIBERIKAN OLEH DTO KEMENKES",
                "auth_url" => "https://api-satusehat-dev.dto.kemkes.go.id/oauth2/v1",
                "url" => "https://api-satusehat-dev.dto.kemkes.go.id/fhir-r4/v1",
                'writeLog' => false,
                "timeout" => 5,
                "consent" => [
                    "url" => "https://api-satusehat-dev.dto.kemkes.go.id/consent/v1"
                ],
                "kyc" => [
                    "url" => "https://api-satusehat-dev.dto.kemkes.go.id/kyc/v1",
                    "type" => "development" // development or production
                ],
                "kfa" => [
                    "url" => "https://api-satusehat-dev.dto.kemkes.go.id/kfa"
                ]
            ],
            'SIRS' => [
                'url' => 'http://202.70.136.24:3000/api',
                'email' => 'email@gmail.com',
                'pass' => '[PASSWORD DARI KEMKES]',
                'writeLog' => false,
            ],
        ],
        "PusdatinService" => [
            "soap" => [
                "url" => "http://[IP/HOST/DOMAIN[:PORT]]/kemenkes/adminduk/?wsdl",
                "username" => "[USER NAME]",
                "token" => "[TOKEN]",
                'writeLog' => false,
            ],
            "rest" => [
                "url" => "http://[IP/HOST/DOMAIN[:PORT]]/api",
                "username" => "[USER NAME(OPTIONAL)]",
                "token" => "[TOKEN]",
                'writeLog' => false,
            ],
            "active" => "rest"
        ],
        'DukcapilService' => [
            'url' => 'http://[IP/HOST[:PORT]]/dukcapil/get_json/[RS]',
            'id' => '[USER ID DARI DUKCAPIL]',
            'pass' => '[PASSWORD DARI DUKCAPIL',
            'ip' => '[IP PUBLIK YANG TEREGISTER]',
            'writeLog' => false,
        ],
        'TTS' => [
            "url" => "https://translate.google.com/translate_tts",
            "params" => [
                "ie" => "UTF-8",
                "client" => "tw-ob",
                "tob" => true,
                "q" => "[SET YOUR TEXT HERE]",
                "tl" => "id",
                "idx" => 0,
                "textlen" => 0
            ],
            'writeLog' => false,
        ],
        'MailServer' => [
            'host' => 'smtp.gmail.com',
            'port' => 587,
            'connection_class' => 'login',
            'connection_config' => [
                'display_name' => null,
                'username' => 'email',
                'password' => 'password-email',
                'ssl' => 'tls',
            ],
            //'max_timeout' => 60,
            'connection_time_limit' => 60
        ],
        'PACService' => [
            'api' => [
                'url' => 'http://172.16.21.58:8042/',
                'username' => 'remote',
                'password' => 'bismillah',
                'viewer' => 'osimis-viewer/app/index.html',
            ],
        ],
		'SchedulersServiceLocation' => [
            "lis" => [
                // Mohon untuk tidak menjadikan true jika di server yang sama sehingga tidak terjadi looping
                "remote" => false, 
                "url" => "http://localhost/webservice/lis/service",
                "fieldStatusResults" => [
                    1 => "", // winacom
                    2 => "", // novanet
                    3 => "" // vanslab
                ],
            ],
        ],
        'DokumentStorage' => [
            "host" => "localhost",
            "port" => 22,
            "username" => "document-storage",
            "password" => "document-storage",
            "location" => "/var/data/document-storage",
            "timeoutConnection" => 10,
        ],
    ],
];