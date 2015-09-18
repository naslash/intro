
︠cd5182e3-ed85-42b6-af45-aff4370b3df1i︠
%md
︡79256378-2a5b-463d-a9f9-93e54bedf398︡{"md":""}︡
︠59f8a698-559c-4fbf-aacf-33cbe72c96a6is︠
%md
# Random Walk
### Adam Nasla, 2D and 2D plots of a random walk
︡33fefda6-2651-40d7-8733-da2ed16e0263︡{"md":"# Random Walk\n### Adam Nasla, 2D and 2D plots of a random walk\n"}︡
︠ea7fe570-1df2-41aa-9322-e1436cd9bbd7︠

g = graphs.RandomGNM(15, 20)  # 15 vertices and 20 edges
show(g)
g.incidence_matrix()
︡d3cba9eb-cd14-491e-9bf3-84b3291acbf2︡{"d3":{"viewer":"graph","data":{"link_distance":50,"link_strength":1,"links":[{"strength":0,"target":3,"color":"#aaa","curve":0,"source":0,"name":""},{"strength":0,"target":8,"color":"#aaa","curve":0,"source":0,"name":""},{"strength":0,"target":4,"color":"#aaa","curve":0,"source":1,"name":""},{"strength":0,"target":11,"color":"#aaa","curve":0,"source":1,"name":""},{"strength":0,"target":13,"color":"#aaa","curve":0,"source":1,"name":""},{"strength":0,"target":6,"color":"#aaa","curve":0,"source":2,"name":""},{"strength":0,"target":7,"color":"#aaa","curve":0,"source":2,"name":""},{"strength":0,"target":14,"color":"#aaa","curve":0,"source":2,"name":""},{"strength":0,"target":8,"color":"#aaa","curve":0,"source":4,"name":""},{"strength":0,"target":10,"color":"#aaa","curve":0,"source":5,"name":""},{"strength":0,"target":12,"color":"#aaa","curve":0,"source":5,"name":""},{"strength":0,"target":14,"color":"#aaa","curve":0,"source":6,"name":""},{"strength":0,"target":10,"color":"#aaa","curve":0,"source":7,"name":""},{"strength":0,"target":13,"color":"#aaa","curve":0,"source":7,"name":""},{"strength":0,"target":12,"color":"#aaa","curve":0,"source":8,"name":""},{"strength":0,"target":10,"color":"#aaa","curve":0,"source":9,"name":""},{"strength":0,"target":12,"color":"#aaa","curve":0,"source":9,"name":""},{"strength":0,"target":12,"color":"#aaa","curve":0,"source":11,"name":""},{"strength":0,"target":13,"color":"#aaa","curve":0,"source":11,"name":""},{"strength":0,"target":14,"color":"#aaa","curve":0,"source":12,"name":""}],"pos":[],"height":null,"edge_thickness":2,"loops":[],"edge_labels":false,"vertex_size":7,"vertex_labels":true,"directed":false,"gravity":0.04,"width":null,"charge":-120,"nodes":[{"group":"0","name":"0"},{"group":"0","name":"1"},{"group":"0","name":"2"},{"group":"0","name":"3"},{"group":"0","name":"4"},{"group":"0","name":"5"},{"group":"0","name":"6"},{"group":"0","name":"7"},{"group":"0","name":"8"},{"group":"0","name":"9"},{"group":"0","name":"10"},{"group":"0","name":"11"},{"group":"0","name":"12"},{"group":"0","name":"13"},{"group":"0","name":"14"}]}}}︡{"html":"<div align='center'></div>"}︡{"stdout":"[-1 -1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0]\n[ 0  0 -1 -1 -1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  0 -1 -1 -1  0  0  0  0  0  0  0  0  0  0  0  0]\n[ 0  1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  1  0  0  0 -1  0  0  0  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  0  0  0  0  0 -1 -1  0  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  0  0  0  1  0  0  0 -1  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  0  0  1  0  0  0  0  0 -1 -1  0  0  0  0  0  0]\n[ 1  0  0  0  0  0  0  0  1  0  0  0  0  0 -1  0  0  0  0  0]\n[ 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0 -1 -1  0  0  0]\n[ 0  0  0  0  0  0  0  0  0  0  1  0  0  1  0  0  1  0  0  0]\n[ 0  0  0  1  0  0  0  0  0  0  0  0  0  0  0  0  0 -1 -1  0]\n[ 0  0  0  0  0  0  0  0  0  1  0  0  0  0  1  1  0  0  1 -1]\n[ 0  0  1  0  0  0  0  0  0  0  0  0  1  0  0  0  0  1  0  0]\n[ 0  0  0  0  0  1  0  0  0  0  0  1  0  0  0  0  0  0  0  1]\n"}︡
︠fbdd2724-cdca-48eb-9886-e987ce38244b︠
︡7ec84772-09b3-4e5a-a7e7-845b11fda373︡
︠861d63ae-6241-48bf-b112-6e7df6a7a679︠

stats.TimeSeries(1000).randomize('normal').sums().plot()
︡dfa43cdf-a308-43df-8064-8e3581a77527︡{"once":false,"file":{"show":true,"uuid":"6646a274-468b-4861-b125-2ee80d72c6ae","filename":"/projects/0fc31d8a-482d-4710-be10-6ac7a2ab23c7/.sage/temp/compute2-us/26552/tmp_Zdg8V8.svg"}}︡{"html":"<div align='center'></div>"}︡
︠9e5e4237-e5a4-4a46-ae12-e8fb49859a93︠

v = [(0,0,0)]
for i in range(1000):
    v.append([a+random()-.5 for a in v[-1]])
line3d(v, color='red', thickness=3, spin=3)
︡c2892e5f-bebd-49fe-ba7c-5d9083b886c8︡{"file":{"uuid":"903dd7ef-20fa-4db4-87e2-fff50c3db2b6","filename":"903dd7ef-20fa-4db4-87e2-fff50c3db2b6.sage3d"}}︡{"html":"<div align='center'></div>"}︡
︠5eb71762-0142-4deb-bd00-deef0ba2dd0c︠









