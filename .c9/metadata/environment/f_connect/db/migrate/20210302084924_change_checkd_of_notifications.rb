{"filter":false,"title":"20210302084924_change_checkd_of_notifications.rb","tooltip":"/f_connect/db/migrate/20210302084924_change_checkd_of_notifications.rb","undoManager":{"mark":18,"position":18,"stack":[[{"start":{"row":1,"column":1},"end":{"row":2,"column":5},"action":"remove","lines":[" def change","  end"],"id":2}],[{"start":{"row":1,"column":1},"end":{"row":9,"column":5},"action":"insert","lines":["def up","    change_column :tasks, :status, :text, default: 'START'","  end","","# ↓は元々の状態","","  def down","    change_column :tasks, :status, :text","  end"],"id":3}],[{"start":{"row":3,"column":0},"end":{"row":3,"column":2},"action":"remove","lines":["  "],"id":4}],[{"start":{"row":3,"column":0},"end":{"row":3,"column":1},"action":"insert","lines":[" "],"id":5}],[{"start":{"row":2,"column":19},"end":{"row":2,"column":24},"action":"remove","lines":["tasks"],"id":9}],[{"start":{"row":2,"column":19},"end":{"row":2,"column":20},"action":"insert","lines":["n"],"id":10},{"start":{"row":2,"column":20},"end":{"row":2,"column":21},"action":"insert","lines":["o"]}],[{"start":{"row":2,"column":19},"end":{"row":2,"column":21},"action":"remove","lines":["no"],"id":11},{"start":{"row":2,"column":19},"end":{"row":2,"column":32},"action":"insert","lines":["notifications"]}],[{"start":{"row":2,"column":40},"end":{"row":2,"column":41},"action":"remove","lines":["s"],"id":12},{"start":{"row":2,"column":39},"end":{"row":2,"column":40},"action":"remove","lines":["u"]},{"start":{"row":2,"column":38},"end":{"row":2,"column":39},"action":"remove","lines":["t"]},{"start":{"row":2,"column":37},"end":{"row":2,"column":38},"action":"remove","lines":["a"]},{"start":{"row":2,"column":36},"end":{"row":2,"column":37},"action":"remove","lines":["t"]},{"start":{"row":2,"column":35},"end":{"row":2,"column":36},"action":"remove","lines":["s"]}],[{"start":{"row":2,"column":35},"end":{"row":2,"column":36},"action":"insert","lines":["c"],"id":13}],[{"start":{"row":2,"column":36},"end":{"row":2,"column":37},"action":"insert","lines":["h"],"id":14},{"start":{"row":2,"column":37},"end":{"row":2,"column":38},"action":"insert","lines":["e"]}],[{"start":{"row":2,"column":35},"end":{"row":2,"column":38},"action":"remove","lines":["che"],"id":15},{"start":{"row":2,"column":35},"end":{"row":2,"column":42},"action":"insert","lines":["checked"]}],[{"start":{"row":2,"column":48},"end":{"row":2,"column":49},"action":"remove","lines":["t"],"id":16},{"start":{"row":2,"column":47},"end":{"row":2,"column":48},"action":"remove","lines":["x"]},{"start":{"row":2,"column":46},"end":{"row":2,"column":47},"action":"remove","lines":["e"]},{"start":{"row":2,"column":45},"end":{"row":2,"column":46},"action":"remove","lines":["t"]}],[{"start":{"row":2,"column":45},"end":{"row":2,"column":46},"action":"insert","lines":["b"],"id":17},{"start":{"row":2,"column":46},"end":{"row":2,"column":47},"action":"insert","lines":["o"]},{"start":{"row":2,"column":47},"end":{"row":2,"column":48},"action":"insert","lines":["o"]}],[{"start":{"row":2,"column":45},"end":{"row":2,"column":48},"action":"remove","lines":["boo"],"id":18},{"start":{"row":2,"column":45},"end":{"row":2,"column":52},"action":"insert","lines":["boolean"]}],[{"start":{"row":2,"column":68},"end":{"row":2,"column":69},"action":"remove","lines":["T"],"id":19},{"start":{"row":2,"column":67},"end":{"row":2,"column":68},"action":"remove","lines":["R"]},{"start":{"row":2,"column":66},"end":{"row":2,"column":67},"action":"remove","lines":["A"]},{"start":{"row":2,"column":65},"end":{"row":2,"column":66},"action":"remove","lines":["T"]},{"start":{"row":2,"column":64},"end":{"row":2,"column":65},"action":"remove","lines":["S"]}],[{"start":{"row":2,"column":64},"end":{"row":2,"column":69},"action":"insert","lines":["false"],"id":20}],[{"start":{"row":8,"column":18},"end":{"row":8,"column":40},"action":"remove","lines":[":tasks, :status, :text"],"id":21}],[{"start":{"row":8,"column":18},"end":{"row":8,"column":53},"action":"insert","lines":[":notifications, :checked, :boolean,"],"id":22}],[{"start":{"row":8,"column":52},"end":{"row":8,"column":53},"action":"remove","lines":[","],"id":23}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":8,"column":52},"end":{"row":8,"column":52},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1614675057795,"hash":"19fadb403f0b651a6983d591ddeb819cbf414495"}