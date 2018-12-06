# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Route.create([
  {name:'1S - Oak Harbor &rarr; Clinton Ferry',note:'*Take Route 6 & transfer to Route 1 Southbound at Coupeville P&R ast 9:55 AM.<br/>N - No service to downtown Coupeville (Broadway, Coveland, or N. Main).',index:1},
  {name:'1N - Clinton Ferry &rarr; Oak Harbor',note:'*Transfer to Route 6 at Coupeville P&R for continued service toward Oak Harbor.<br/>CC - Service provided by Clinton Commuter. Clinton Commuter connects with ferry upon arrival at dock<br/><br/>FERRY CONNECTIONS: Route 1N will only hold more than 5 minutes past the sheduled departure time
if the ferry is actively landing. During Summer months, ferries tend to run late. Please plan your trip accordingly',index:2}
  #{name:'57 Southbound',index:99}
])

r1s = Route.find_by_name("1S - Oak Harbor &rarr; Clinton Ferry")
Stop.create([
  {route_id:r1s.id,names:'Depart<br>Harbor<br>Station,Walmart,Coupeville<br>Elementary,Greenbank,SR 525 at<br>Classic<br>Rd,Smugglers<br>Cove<br>at SW State<br>Park,Freeland<br>Main St<br>at Corey<br>Oil,Bayview<br>P&R,SR 525 at<br>Cultis<br>Bay,Clinton<br>P&R,Clinton<br>Ferry'
  }])
Run.create([
  {route_id:r1s.id,times:" , ,3:45N,4:00,4:03,-,4:08,4:15,4:21,4:26,4:28",index:1},
  {route_id:r1s.id,times:" , ,4:15N,4:30,4:33,-,4:38,4:45,4:51,4:56,4:58",index:2},
  {route_id:r1s.id,times:"4:15,4:19,4:34N,4:49,4:52,-,4:57,5:04,5:10,5:16,5:18",index:3},
  {route_id:r1s.id,times:"4:40,4:44,4:58N,5:13,5:16,-,5:22,5:28,5:34,5:41,5:45",index:4},
  {route_id:r1s.id,times:"5:15,5:19,5:34N,5:49,5:52,-,5:57,6:04,6:10,6:16,6:18",index:5},
  {route_id:r1s.id,times:"5:35,5:39,5:58,6:13,6:16,-,6:22,6:28,6:34,6:41,6:45",index:6},
  {route_id:r1s.id,times:"6:30,6:34,6:55,7:12,7:15,-,7:20,7:27,7:33,7:38,7:42",index:7},
  {route_id:r1s.id,times:"7:30,7:34,7:55,8:12,8:15,-,8:20,8:27,8:34,8:38,8:42",index:8},
  {route_id:r1s.id,times:"8:30,8:34,8:55,9:12,-,9:19,9:30,9:37,9:43,9:48,9:51",index:9},
  {route_id:r1s.id,times:"*9:30,-,9:55,10:12,-,10:19,10:30,10:37,10:43,10:48,10:51",index:10},
  {route_id:r1s.id,times:"10:30,10:34,10:55,11:12,-,11:19,11:30,11:37,11:43,11:48,11:51",index:11},
  {route_id:r1s.id,times:"11:30,11:34,11:55,12:12,-,12:19,12:30,12:37,12:43,12:48,12:51",index:12},
  {route_id:r1s.id,times:"12:30,12:34,12:55,1:12,-,1:19,1:30,1:37,1:43,1:48,1:51",index:13},
  {route_id:r1s.id,times:"1:30,1:34,1:55,2:12,-,2:19,2:30,2:37,2:43,2:48,2:51",index:14},
  {route_id:r1s.id,times:"2:30,2:34,2:55,3:12,3:15,-,3:30,3:37,3:43,3:48,3:51",index:15},
  {route_id:r1s.id,times:"3:30,3:34,3:57,4:12,4:15,-,4:30,4:37,4:43,4:48,4:51",index:16},
  {route_id:r1s.id,times:"4:15,4:19,4:42,4:59,5:02,-,5:07,5:14,5:20,5:25,5:40",index:17},
  {route_id:r1s.id,times:"5:15,5:19,5:40,5:57,6:00,-,6:05,6:12,6:18,6:20,6:40",index:18},
  {route_id:r1s.id,times:"6:15,6:19,6:40,6:57,7:00,-,7:05,7:12,7:18,7:20,7:35",index:19},
  {route_id:r1s.id,times:"7:15,7:19,7:40, , , , , , , , ",index:20},
  {route_id:r1s.id,times:"8:15,8:19,8:40, , , , , , , , ",index:21}
])

r1n = Route.find_by_name("1N - Clinton Ferry &rarr; Oak Harbor")
Stop.create([
  {route_id:r1n.id,names:
   'Depart<br>Clinton<br>Ferry,Clinton<br>P&R,Humphrey<br>Rd P&R,SR 525 at<br>Langley<br>Rd,Bayview<br>P&R,Freeland<br>Main St<br>at WiFire,Greenbank<br>at/SR 525,Coupeville<br>P&R,Monroe/<br>Arnold,Walmart,Harbor<br>Station'
  }])
Run.create([
  {route_id:r1n.id,times:" , , , , , , ,5:05,5:16,5:22,5:30",index:1},
  {route_id:r1n.id,times:" , , , , , , ,5:30,5:41,5:47,5:55",index:2},
  {route_id:r1n.id,times:"5:55,5:56,-,6:01,6:05,6:13,6:22,6:37,6:48,6:54,7:05",index:3},
  {route_id:r1n.id,times:"6:55,6:56,-,7:01,7:05,7:13,7:22,7:37,7:48,7:54,8:05",index:4},
  {route_id:r1n.id,times:"8:15,8:16,8:18,8:24,8:31,8:38,8:47,9:02,9:13,9:19,9:30",index:5},
  {route_id:r1n.id,times:"9:15,9:16,9:18,9:24,9:31,9:38,9:47,10:02,10:13,10:19,10:30",index:6},
  {route_id:r1n.id,times:"10:15,10:16,10:18,10:24,10:31,10:38,10:47,11:02,11:13,11:19,11:30",index:7},
  {route_id:r1n.id,times:"11:15,11:16,11:18,11:24,11:31,11:38,11:47,*12:02,-,*,*",index:8},
  {route_id:r1n.id,times:"12:15,12:16,12:18,12:24,12:31,12:38,12:47,1:02,1:13,1:19,1:30",index:9},
  {route_id:r1n.id,times:"1:15,1:16,1:18,1:24,1:31,1:38,1:47,2:02,2:13,2:19,2:30",index:10},
  {route_id:r1n.id,times:"2:20,2:21,2:23,2:29,2:36,2:43,2:52,3:07,3:18,3:24,3:35",index:11},
  {route_id:r1n.id,times:"3:20,-,-,3:25,3:32,3:39,3:48,4:03,4:14,4:20,4:40",index:12},
  {route_id:r1n.id,times:"3:50,-,-,3:55,4:02,4:09,4:18,4:33,4:44,4:50,5:10",index:13},
  {route_id:r1n.id,times:"4:20,-,-,4:25,4:32,4:39,4:48,5:03,5:14,5:20,5:40",index:14},
  {route_id:r1n.id,times:"4:55,-,-,5:00,5:07,5:14,5:23,5:38,5:49,5:55,6:15",index:15},
  {route_id:r1n.id,times:"5:25,-,-,5:30,5:37,5:44,5:53,6:08,6:19,6:25,6:45",index:16},
  {route_id:r1n.id,times:"5:55,-,-,6:00,6:07,6:14,6:23,6:38,6:49,6:55,7:15",index:17},
  {route_id:r1n.id,times:"6:25,6:26,6:28,6:34,6:41,6:48,6:57,7:12,7:23,7:29,7:55",index:18},
  {route_id:r1n.id,times:"6:55,6:56,6:58,7:04,7:11,7:18,7:27,7:42, , , ",index:19},
  {route_id:r1n.id,times:"7:20,7:21,7:23,7:29,7:36,7:43,7:52,8:07, , , ",index:20},
  {route_id:r1n.id,times:"7:50,7:51,7:53,7:59,8:06,8:13,8:22,8:37, , , ",index:21}
])

