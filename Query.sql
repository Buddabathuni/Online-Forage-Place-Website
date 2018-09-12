--------------------------------------------------City--------------------------------------------------------------------------

	if NOT exists(select * from City where CityName='India')
		Insert into City  Values ('India')

	if NOT exists(select * from City where CityName='USA')
		Insert into City  Values ('USA')

	if NOT exists(select * from City where CityName='UK')
		Insert into City  Values ('UK')

   if NOT exists(select * from City where CityName='Kuwait')
		Insert into City  Values ('Kuwait')
  -------------------------------------------------------------Place-----------------------------------------------------------------------------

                                          ---------------------india-------------------

	if NOT exists (select * from Place where PlaceName='Andhrapradesh' and CityID=(select CityID from City where CityName='India'))
		Insert into Place Values ('Andhrapradesh',(select CityID from City where CityName='India'))

	if NOT exists (select * from Place where PlaceName='Kerala' and CityID=(select CityID from City where CityName='India'))
		Insert into Place Values ('Kerala',(select CityID from City where CityName='India'))

	if NOT exists (select * from Place where PlaceName='Karnataka' and CityID=(select CityID from City where CityName='India'))
		Insert into Place Values ('Karnataka',(select CityID from City where CityName='India'))

                                          ----------------------usa---------------------

    if NOT exists (select * from Place where PlaceName='Washington DC' and CityID=(select CityID from City where CityName='USA'))
		Insert into Place Values ('Washington DC',(select CityID from City where CityName='USA'))

	if NOT exists (select * from Place where PlaceName='Virginia' and CityID=(select CityID from City where CityName='USA'))
		Insert into Place Values ('Virginia',(select CityID from City where CityName='USA'))

	if NOT exists (select * from Place where PlaceName='New York' and CityID=(select CityID from City where CityName='USA'))
		Insert into Place Values ('New York',(select CityID from City where CityName='USA'))

		                                  -------------------------uk-------------------

    if NOT exists (select * from Place where PlaceName='London' and CityID=(select CityID from City where CityName='UK'))
		Insert into Place Values ('London',(select CityID from City where CityName='UK'))

	if NOT exists (select * from Place where PlaceName='Cookstown' and CityID=(select CityID from City where CityName='UK'))
		Insert into Place Values ('Cookstown',(select CityID from City where CityName='UK'))

	if NOT exists (select * from Place where PlaceName='Birmingham' and CityID=(select CityID from City where CityName='UK'))
		Insert into Place Values ('Birmingham',(select CityID from City where CityName='UK'))
		 ------------------------------------------ Kuwait ---------------------------------------------------------------
		 if NOT exists (select * from Place where PlaceName='Beherin' and CityID=(select CityID from City where CityName='Kuwait'))
		Insert into Place Values ('Beherin',(select CityID from City where CityName='Kuwait'))

			 if NOT exists (select * from Place where PlaceName='Oman' and CityID=(select CityID from City where CityName='Kuwait'))
		Insert into Place Values ('Oman',(select CityID from City where CityName='Kuwait'))

			 if NOT exists (select * from Place where PlaceName='Muscat' and CityID=(select CityID from City where CityName='Kuwait'))
		Insert into Place Values ('Muscat',(select CityID from City where CityName='Kuwait'))

		if NOT exists (select * from Place where PlaceName='Kuwait' and CityID=(select CityID from City where CityName='Kuwait'))
		Insert into Place Values ('Kuwait',(select CityID from City where CityName='Kuwait'))


		Select * from city
		select * from place
		select * from halldetails


		Create Procedure Prc_HallDetails
		(
		@HallName nvarchar(50), 
		@HallID int , 
		@City nvarchar(50),
		@Place nvarchar(50),
		@HallTimings datetime,
		@SeatingCapacity int,
		@Status nvarchar(50),
		@Dimensions nvarchar(50),
		@EventType nvarchar(50),
		@NoOfWorkers int 
		)
		As
		Begin
		Insert into HallDetails(HallName,HallID,City,Place,HallTimings,SeatingCapacity,Status,Dimensions,EventType,NoOfWorkers)
		Values
		(@HallName,@HallID,@City,@Place,@HallTimings,@SeatingCapacity,@Status,@Dimensions,@EventType,@NoOfWorkers)
		End