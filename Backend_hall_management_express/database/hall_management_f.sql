{
	"info": {
		"_postman_id": "d788ebe2-8e5c-4059-a269-0728694d6526",
		"name": "Hall_Management",
		"schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json",
		"_exporter_id": "15501989"
	},
	"item": [
		{
			"name": "registration",
			"request": {
				"method": "POST",
				"header": [],
				"body": {
					"mode": "urlencoded",
					"urlencoded": [
						{
							"key": "name",
							"value": "Provost",
							"type": "text"
						},
						{
							"key": "email",
							"value": "Provost@gmail.com",
							"type": "text"
						},
						{
							"key": "password",
							"value": "123456",
							"type": "text"
						},
						{
							"key": "reg",
							"value": "3333333",
							"type": "text"
						}
					]
				},
				"url": {
					"raw": "http://localhost:1111/api/v1/public/registration",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "1111",
					"path": [
						"api",
						"v1",
						"public",
						"registration"
					]
				}
			},
			"response": []
		},
		{
			"name": "test user",
			"request": {
				"method": "GET",
				"header": [],
				"url": {
					"raw": "http://localhost:1111/api/v1/public/users",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "1111",
					"path": [
						"api",
						"v1",
						"public",
						"users"
					]
				}
			},
			"response": []
		},
		{
			"name": "signIn",
			"request": {
				"method": "POST",
				"header": [],
				"body": {
					"mode": "urlencoded",
					"urlencoded": [
						{
							"key": "email",
							"value": "AuthorityTest@gmail.com",
							"type": "text"
						},
						{
							"key": "password",
							"value": "123456",
							"type": "text"
						}
					]
				},
				"url": {
					"raw": "http://localhost:1111/api/v1/public/signIn",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "1111",
					"path": [
						"api",
						"v1",
						"public",
						"signIn"
					]
				}
			},
			"response": []
		},
		{
			"name": "/application/get",
			"request": {
				"auth": {
					"type": "bearer",
					"bearer": [
						{
							"key": "token",
							"value": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IkF1dGhvcml0eVRlc3RAZ21haWwuY29tIiwidXNlcl9pZCI6NTQsInJvbGUiOiJQVUJMSUMiLCJhc3NpZ25fcm9sZV9pZCI6MTIsImlhdCI6MTY2OTE4MTA1NywiZXhwIjoxNjcxNzczMDU3fQ.xKnVn36_sOGavhvSQQgf9seZos7ppjGFVLP1QiD8nmA",
							"type": "string"
						}
					]
				},
				"method": "POST",
				"header": [],
				"body": {
					"mode": "urlencoded",
					"urlencoded": [
						{
							"key": "start",
							"value": "1",
							"type": "text"
						},
						{
							"key": "offset",
							"value": "100",
							"type": "text"
						},
						{
							"key": "sort_by",
							"value": "Name ASC, Last_result DESC",
							"type": "text"
						},
						{
							"key": "order",
							"value": "ASC",
							"type": "text",
							"disabled": true
						}
					]
				},
				"url": {
					"raw": "http://localhost:1111/api/v1/application/get",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "1111",
					"path": [
						"api",
						"v1",
						"application",
						"get"
					]
				}
			},
			"response": []
		},
		{
			"name": "get role using jwt token",
			"request": {
				"auth": {
					"type": "bearer",
					"bearer": [
						{
							"key": "token",
							"value": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InNzQGdtYWlsLmNvbSIsInVzZXJfaWQiOjUyLCJyb2xlIjoiUFVCTElDIiwiYXNzaWduX3JvbGVfaWQiOjEwLCJpYXQiOjE2NjkxODQxMDYsImV4cCI6MTY3MTc3NjEwNn0.udDa2_doWjicEKg0TRkXV1tvEDv3vCNIHwGwroTxdIs",
							"type": "string"
						}
					]
				},
				"method": "GET",
				"header": [],
				"url": {
					"raw": "http://localhost:1111/api/v1/user/role",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "1111",
					"path": [
						"api",
						"v1",
						"user",
						"role"
					]
				}
			},
			"response": []
		},
		{
			"name": "getPaymentByRegNo",
			"request": {
				"auth": {
					"type": "bearer",
					"bearer": [
						{
							"key": "token",
							"value": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IkF1dGhvcml0eVRlc3RAZ21haWwuY29tIiwidXNlcl9pZCI6NTQsInJvbGUiOiJQVUJMSUMiLCJhc3NpZ25fcm9sZV9pZCI6MTIsImlhdCI6MTY2OTE4MTA1NywiZXhwIjoxNjcxNzczMDU3fQ.xKnVn36_sOGavhvSQQgf9seZos7ppjGFVLP1QiD8nmA",
							"type": "string"
						}
					]
				},
				"method": "POST",
				"header": [],
				"body": {
					"mode": "urlencoded",
					"urlencoded": [
						{
							"key": "RegNo",
							"value": "2019339067",
							"type": "text"
						}
					]
				},
				"url": {
					"raw": "http://localhost:1111/api/v1/authority/payment/getPaymentByRegNo",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "1111",
					"path": [
						"api",
						"v1",
						"authority",
						"payment",
						"getPaymentByRegNo"
					]
				}
			},
			"response": []
		},
		{
			"name": "addRoom",
			"request": {
				"auth": {
					"type": "bearer",
					"bearer": [
						{
							"key": "token",
							"value": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IkF1dGhvcml0eVRlc3RAZ21haWwuY29tIiwidXNlcl9pZCI6NTQsInJvbGUiOiJQVUJMSUMiLCJhc3NpZ25fcm9sZV9pZCI6MTIsImlhdCI6MTY2OTE4MTA1NywiZXhwIjoxNjcxNzczMDU3fQ.xKnVn36_sOGavhvSQQgf9seZos7ppjGFVLP1QiD8nmA",
							"type": "string"
						}
					]
				},
				"method": "POST",
				"header": [],
				"body": {
					"mode": "urlencoded",
					"urlencoded": [
						{
							"key": "RoomNo",
							"value": "510",
							"type": "text"
						},
						{
							"key": "Block",
							"value": "A",
							"type": "text"
						},
						{
							"key": "Floor",
							"value": "5",
							"type": "text"
						},
						{
							"key": "Capacity",
							"value": "4",
							"type": "text"
						},
						{
							"key": "Resident_number",
							"value": "1",
							"type": "text"
						}
					]
				},
				"url": {
					"raw": "http://localhost:1111/api/v1/authority/rooms/addRoom",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "1111",
					"path": [
						"api",
						"v1",
						"authority",
						"rooms",
						"addRoom"
					]
				}
			},
			"response": []
		},
		{
			"name": "application/apply",
			"request": {
				"auth": {
					"type": "bearer",
					"bearer": [
						{
							"key": "token",
							"value": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InNzQGdtYWlsLmNvbSIsInVzZXJfaWQiOjUyLCJyb2xlIjoiUFVCTElDIiwiYXNzaWduX3JvbGVfaWQiOjEwLCJpYXQiOjE2NjkyMTk4NDksImV4cCI6MTY3MTgxMTg0OX0.4zVY4TiitSwtpj6fCcXIhZTdmCyv6Ub-InS_NzJBqLU",
							"type": "string"
						}
					]
				},
				"method": "POST",
				"header": [],
				"body": {
					"mode": "urlencoded",
					"urlencoded": [
						{
							"key": "Name",
							"value": "ss",
							"type": "text"
						},
						{
							"key": "RegNo",
							"value": "1010",
							"type": "text"
						},
						{
							"key": "PhoneNo",
							"value": "+880",
							"type": "text"
						},
						{
							"key": "Father_name",
							"value": "f",
							"type": "text"
						},
						{
							"key": "Mother_name",
							"value": "m",
							"type": "text"
						},
						{
							"key": "Permanent_address",
							"value": "s",
							"type": "text"
						},
						{
							"key": "Present_address",
							"value": "a",
							"type": "text"
						},
						{
							"key": "Department",
							"value": "SWE",
							"type": "text"
						},
						{
							"key": "Semester",
							"value": "4",
							"type": "text"
						},
						{
							"key": "Last_result",
							"value": "3.33",
							"type": "text"
						},
						{
							"key": "Merit_position",
							"value": "1001",
							"type": "text"
						},
						{
							"key": "Addmission_year",
							"value": "2018",
							"type": "text"
						},
						{
							"key": "Session",
							"value": "2018-19",
							"type": "text"
						},
						{
							"key": "Application_date",
							"value": "",
							"type": "text",
							"disabled": true
						}
					]
				},
				"url": {
					"raw": "http://localhost:1111/api/v1/application/apply",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "1111",
					"path": [
						"api",
						"v1",
						"application",
						"apply"
					]
				}
			},
			"response": []
		},
		{
			"name": "rooms/getSorted",
			"request": {
				"auth": {
					"type": "bearer",
					"bearer": [
						{
							"key": "token",
							"value": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IkF1dGhvcml0eVRlc3RAZ21haWwuY29tIiwidXNlcl9pZCI6NTQsInJvbGUiOiJQVUJMSUMiLCJhc3NpZ25fcm9sZV9pZCI6MTIsImlhdCI6MTY2OTE4MTA1NywiZXhwIjoxNjcxNzczMDU3fQ.xKnVn36_sOGavhvSQQgf9seZos7ppjGFVLP1QiD8nmA",
							"type": "string"
						}
					]
				},
				"method": "GET",
				"header": [],
				"url": {
					"raw": "http://localhost:1111/api/v1/authority/rooms/getSorted",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "1111",
					"path": [
						"api",
						"v1",
						"authority",
						"rooms",
						"getSorted"
					]
				}
			},
			"response": []
		},
		{
			"name": "addResidentRegNoRoomNo",
			"request": {
				"auth": {
					"type": "bearer",
					"bearer": [
						{
							"key": "token",
							"value": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IkF1dGhvcml0eVRlc3RAZ21haWwuY29tIiwidXNlcl9pZCI6NTQsInJvbGUiOiJBVVRIT1JJVFkiLCJhc3NpZ25fcm9sZV9pZCI6MTIsImlhdCI6MTY2OTIxOTY2MywiZXhwIjoxNjcxODExNjYzfQ.i1QStLcBkmH9bmH_TwHep3FXu8tf4kA6pEhtFYtGJm8",
							"type": "string"
						}
					]
				},
				"method": "POST",
				"header": [],
				"body": {
					"mode": "urlencoded",
					"urlencoded": [
						{
							"key": "RegNo",
							"value": "1010",
							"type": "text"
						},
						{
							"key": "RoomNo",
							"value": "306",
							"type": "text"
						}
					]
				},
				"url": {
					"raw": "http://localhost:1111/api/v1/authority/resident/addResidentRegNoRoomNo",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "1111",
					"path": [
						"api",
						"v1",
						"authority",
						"resident",
						"addResidentRegNoRoomNo"
					]
				}
			},
			"response": []
		},
		{
			"name": "getResidentsInfo",
			"request": {
				"auth": {
					"type": "bearer",
					"bearer": [
						{
							"key": "token",
							"value": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IkF1dGhvcml0eVRlc3RAZ21haWwuY29tIiwidXNlcl9pZCI6NTQsInJvbGUiOiJBVVRIT1JJVFkiLCJhc3NpZ25fcm9sZV9pZCI6MTIsImlhdCI6MTY2OTIxOTY2MywiZXhwIjoxNjcxODExNjYzfQ.i1QStLcBkmH9bmH_TwHep3FXu8tf4kA6pEhtFYtGJm8",
							"type": "string"
						}
					]
				},
				"method": "POST",
				"header": [],
				"body": {
					"mode": "urlencoded",
					"urlencoded": [
						{
							"key": "start",
							"value": "1",
							"type": "text"
						},
						{
							"key": "offset",
							"value": "10",
							"type": "text"
						},
						{
							"key": "sort_by",
							"value": "Department ASC, Admission_date DESC",
							"type": "text"
						}
					]
				},
				"url": {
					"raw": "http://localhost:1111/api/v1/authority/resident/getAllResidentsInfo",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "1111",
					"path": [
						"api",
						"v1",
						"authority",
						"resident",
						"getAllResidentsInfo"
					]
				}
			},
			"response": []
		},
		{
			"name": "deleteResidentByRegNo",
			"request": {
				"auth": {
					"type": "bearer",
					"bearer": [
						{
							"key": "token",
							"value": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IkF1dGhvcml0eVRlc3RAZ21haWwuY29tIiwidXNlcl9pZCI6NTQsInJvbGUiOiJBVVRIT1JJVFkiLCJhc3NpZ25fcm9sZV9pZCI6MTIsImlhdCI6MTY2OTIyMjk5MywiZXhwIjoxNjcxODE0OTkzfQ.qpzcSMOhl38xJxZcAibEu2y0cr28cu6XWCJWnetgxes",
							"type": "string"
						}
					]
				},
				"method": "DELETE",
				"header": [],
				"body": {
					"mode": "urlencoded",
					"urlencoded": [
						{
							"key": "RegNo",
							"value": "1111111111",
							"type": "text"
						}
					]
				},
				"url": {
					"raw": "http://localhost:1111/api/v1/authority/resident/deleteResidentByRegNo",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "1111",
					"path": [
						"api",
						"v1",
						"authority",
						"resident",
						"deleteResidentByRegNo"
					]
				}
			},
			"response": []
		},
		{
			"name": "updateApproval_statusbyRegNo",
			"request": {
				"auth": {
					"type": "bearer",
					"bearer": [
						{
							"key": "token",
							"value": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IkF1dGhvcml0eVRlc3RAZ21haWwuY29tIiwidXNlcl9pZCI6NTQsInJvbGUiOiJQVUJMSUMiLCJhc3NpZ25fcm9sZV9pZCI6MTIsImlhdCI6MTY2OTE4MTA1NywiZXhwIjoxNjcxNzczMDU3fQ.xKnVn36_sOGavhvSQQgf9seZos7ppjGFVLP1QiD8nmA",
							"type": "string"
						}
					]
				},
				"method": "PATCH",
				"header": [],
				"body": {
					"mode": "urlencoded",
					"urlencoded": [
						{
							"key": "RegNo",
							"value": "2019339067\n",
							"type": "text"
						},
						{
							"key": "Approval_status",
							"value": "APPROVEDBYDEPTHEAD",
							"type": "text"
						}
					]
				},
				"url": {
					"raw": "http://localhost:1111/api/v1/application/updateApproval_statusbyRegNo",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "1111",
					"path": [
						"api",
						"v1",
						"application",
						"updateApproval_statusbyRegNo"
					]
				}
			},
			"response": []
		},
		{
			"name": "getAllUsers",
			"protocolProfileBehavior": {
				"disableBodyPruning": true
			},
			"request": {
				"auth": {
					"type": "bearer",
					"bearer": [
						{
							"key": "token",
							"value": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IkF1dGhvcml0eVRlc3RAZ21haWwuY29tIiwidXNlcl9pZCI6NTQsInJvbGUiOiJBVVRIT1JJVFkiLCJhc3NpZ25fcm9sZV9pZCI6MTIsImlhdCI6MTY2OTIxOTY2MywiZXhwIjoxNjcxODExNjYzfQ.i1QStLcBkmH9bmH_TwHep3FXu8tf4kA6pEhtFYtGJm8",
							"type": "string"
						}
					]
				},
				"method": "GET",
				"header": [],
				"body": {
					"mode": "urlencoded",
					"urlencoded": []
				},
				"url": {
					"raw": "http://localhost:1111/api/v1/authority/user/getAllUsers",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "1111",
					"path": [
						"api",
						"v1",
						"authority",
						"user",
						"getAllUsers"
					]
				}
			},
			"response": []
		},
		{
			"name": "/updateUserRole",
			"request": {
				"auth": {
					"type": "bearer",
					"bearer": [
						{
							"key": "token",
							"value": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IkF1dGhvcml0eVRlc3RAZ21haWwuY29tIiwidXNlcl9pZCI6NTQsInJvbGUiOiJBVVRIT1JJVFkiLCJhc3NpZ25fcm9sZV9pZCI6MTIsImlhdCI6MTY2OTIxOTY2MywiZXhwIjoxNjcxODExNjYzfQ.i1QStLcBkmH9bmH_TwHep3FXu8tf4kA6pEhtFYtGJm8",
							"type": "string"
						}
					]
				},
				"method": "PATCH",
				"header": [],
				"body": {
					"mode": "urlencoded",
					"urlencoded": [
						{
							"key": "user_id",
							"value": "59",
							"type": "text"
						},
						{
							"key": "role_id",
							"value": "7",
							"type": "text"
						}
					]
				},
				"url": {
					"raw": "http://localhost:1111/api/v1/authority/user/updateUserRole",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "1111",
					"path": [
						"api",
						"v1",
						"authority",
						"user",
						"updateUserRole"
					]
				}
			},
			"response": []
		},
		{
			"name": "getAllRoles",
			"request": {
				"auth": {
					"type": "bearer",
					"bearer": [
						{
							"key": "token",
							"value": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IkF1dGhvcml0eVRlc3RAZ21haWwuY29tIiwidXNlcl9pZCI6NTQsInJvbGUiOiJBVVRIT1JJVFkiLCJhc3NpZ25fcm9sZV9pZCI6MTIsImlhdCI6MTY2OTIxOTY2MywiZXhwIjoxNjcxODExNjYzfQ.i1QStLcBkmH9bmH_TwHep3FXu8tf4kA6pEhtFYtGJm8",
							"type": "string"
						}
					]
				},
				"method": "GET",
				"header": [],
				"url": {
					"raw": "http://localhost:1111/api/v1/authority/role/getAllRoles",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "1111",
					"path": [
						"api",
						"v1",
						"authority",
						"role",
						"getAllRoles"
					]
				}
			},
			"response": []
		},
		{
			"name": "addResidentRegNoRoomNo",
			"request": {
				"auth": {
					"type": "bearer",
					"bearer": [
						{
							"key": "token",
							"value": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IkF1dGhvcml0eVRlc3RAZ21haWwuY29tIiwidXNlcl9pZCI6NTQsInJvbGUiOiJBVVRIT1JJVFkiLCJhc3NpZ25fcm9sZV9pZCI6MTIsImlhdCI6MTY2OTIxOTY2MywiZXhwIjoxNjcxODExNjYzfQ.i1QStLcBkmH9bmH_TwHep3FXu8tf4kA6pEhtFYtGJm8",
							"type": "string"
						}
					]
				},
				"method": "POST",
				"header": [],
				"body": {
					"mode": "urlencoded",
					"urlencoded": [
						{
							"key": "RegNo",
							"value": "2019533068",
							"type": "text"
						},
						{
							"key": "RoomNo",
							"value": "302",
							"type": "text"
						}
					]
				},
				"url": {
					"raw": "http://localhost:1111/api/v1/authority/resident/addResidentRegNoRoomNo",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "1111",
					"path": [
						"api",
						"v1",
						"authority",
						"resident",
						"addResidentRegNoRoomNo"
					]
				}
			},
			"response": []
		},
		{
			"name": "deleteResidentByRegNo",
			"request": {
				"auth": {
					"type": "bearer",
					"bearer": [
						{
							"key": "token",
							"value": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IkF1dGhvcml0eVRlc3RAZ21haWwuY29tIiwidXNlcl9pZCI6NTQsInJvbGUiOiJBVVRIT1JJVFkiLCJhc3NpZ25fcm9sZV9pZCI6MTIsImlhdCI6MTY2OTIxOTY2MywiZXhwIjoxNjcxODExNjYzfQ.i1QStLcBkmH9bmH_TwHep3FXu8tf4kA6pEhtFYtGJm8",
							"type": "string"
						}
					]
				},
				"method": "DELETE",
				"header": [],
				"body": {
					"mode": "urlencoded",
					"urlencoded": [
						{
							"key": "RegNo",
							"value": "2019533068",
							"type": "text"
						}
					]
				},
				"url": {
					"raw": "http://localhost:1111/api/v1/authority/resident/deleteResidentByRegNo",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "1111",
					"path": [
						"api",
						"v1",
						"authority",
						"resident",
						"deleteResidentByRegNo"
					]
				}
			},
			"response": []
		}
	]
}