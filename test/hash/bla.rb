def __a
{"id"=>"some-process",
 "start_events"=>
  [{"id"=>"Start.default",
    "outgoing"=>
     [{"id"=>
        "Start.default-Trailblazer::Operation::Railway::PassFast-End.pass_fast"},
      {"id"=>
        "Start.default-Trailblazer::Operation::Railway::FailFast-End.fail_fast"},
      {"id"=>"Start.default-Trailblazer::Circuit::Right-a"},
      {"id"=>"Start.default-Trailblazer::Circuit::Left-c"}],
    "incoming"=>[]}],
 "end_events"=>
  [{"id"=>"End.success",
    "outgoing"=>[],
    "incoming"=>[{"id"=>"d-Trailblazer::Circuit::Right-End.success"}]},
   {"id"=>"End.failure",
    "outgoing"=>[],
    "incoming"=>
     [{"id"=>"f-Trailblazer::Circuit::Right-End.failure"},
      {"id"=>"f-Trailblazer::Circuit::Left-End.failure"}]},
   {"id"=>"End.pass_fast",
    "outgoing"=>[],
    "incoming"=>
     [{"id"=>
        "Start.default-Trailblazer::Operation::Railway::PassFast-End.pass_fast"}]},
   {"id"=>"End.fail_fast",
    "outgoing"=>[],
    "incoming"=>
     [{"id"=>
        "Start.default-Trailblazer::Operation::Railway::FailFast-End.fail_fast"}]}],
 "task"=>
  [{"id"=>:a,
    "outgoing"=>
     [{"id"=>"a-Trailblazer::Circuit::Right-b"},
      {"id"=>"a-Trailblazer::Circuit::Left-c"}],
    "incoming"=>[{"id"=>"Start.default-Trailblazer::Circuit::Right-a"}]},
   {"id"=>:b,
    "outgoing"=>
     [{"id"=>"b-Trailblazer::Circuit::Right-bb"},
      {"id"=>"b-Trailblazer::Circuit::Left-c"}],
    "incoming"=>[{"id"=>"a-Trailblazer::Circuit::Right-b"}]},
   {"id"=>:bb,
    "outgoing"=>
     [{"id"=>"bb-Trailblazer::Circuit::Left-c"},
      {"id"=>"bb-Trailblazer::Circuit::Right-d"}],
    "incoming"=>[{"id"=>"b-Trailblazer::Circuit::Right-bb"}]},
   {"id"=>:c,
    "outgoing"=>
     [{"id"=>"c-Trailblazer::Circuit::Right-e"},
      {"id"=>"c-Trailblazer::Circuit::Left-e"}],
    "incoming"=>
     [{"id"=>"Start.default-Trailblazer::Circuit::Left-c"},
      {"id"=>"a-Trailblazer::Circuit::Left-c"},
      {"id"=>"b-Trailblazer::Circuit::Left-c"},
      {"id"=>"bb-Trailblazer::Circuit::Left-c"}]},
   {"id"=>:d,
    "outgoing"=>
     [{"id"=>"d-Trailblazer::Circuit::Right-End.success"},
      {"id"=>"d-Trailblazer::Circuit::Left-e"}],
    "incoming"=>[{"id"=>"bb-Trailblazer::Circuit::Right-d"}]},
   {"id"=>:e,
    "outgoing"=>
     [{"id"=>"e-Trailblazer::Circuit::Right-f"},
      {"id"=>"e-Trailblazer::Circuit::Left-f"}],
    "incoming"=>
     [{"id"=>"c-Trailblazer::Circuit::Right-e"},
      {"id"=>"c-Trailblazer::Circuit::Left-e"},
      {"id"=>"d-Trailblazer::Circuit::Left-e"}]},
   {"id"=>:f,
    "outgoing"=>
     [{"id"=>"f-Trailblazer::Circuit::Right-End.failure"},
      {"id"=>"f-Trailblazer::Circuit::Left-End.failure"}],
    "incoming"=>
     [{"id"=>"e-Trailblazer::Circuit::Right-f"},
      {"id"=>"e-Trailblazer::Circuit::Left-f"}]}],
 "sequence_flow"=>
  [{"id"=>
     "Start.default-Trailblazer::Operation::Railway::PassFast-End.pass_fast",
    "sourceRef"=>"Start.default",
    "targetRef"=>"End.pass_fast"},
   {"id"=>
     "Start.default-Trailblazer::Operation::Railway::FailFast-End.fail_fast",
    "sourceRef"=>"Start.default",
    "targetRef"=>"End.fail_fast"},
   {"id"=>"Start.default-Trailblazer::Circuit::Right-a",
    "sourceRef"=>"Start.default",
    "targetRef"=>:a},
   {"id"=>"Start.default-Trailblazer::Circuit::Left-c",
    "sourceRef"=>"Start.default",
    "targetRef"=>:c},
   {"id"=>"d-Trailblazer::Circuit::Right-End.success",
    "sourceRef"=>:d,
    "targetRef"=>"End.success"},
   {"id"=>"f-Trailblazer::Circuit::Right-End.failure",
    "sourceRef"=>:f,
    "targetRef"=>"End.failure"},
   {"id"=>"f-Trailblazer::Circuit::Left-End.failure",
    "sourceRef"=>:f,
    "targetRef"=>"End.failure"},
   {"id"=>"a-Trailblazer::Circuit::Right-b", "sourceRef"=>:a, "targetRef"=>:b},
   {"id"=>"a-Trailblazer::Circuit::Left-c", "sourceRef"=>:a, "targetRef"=>:c},
   {"id"=>"b-Trailblazer::Circuit::Right-bb",
    "sourceRef"=>:b,
    "targetRef"=>:bb},
   {"id"=>"b-Trailblazer::Circuit::Left-c", "sourceRef"=>:b, "targetRef"=>:c},
   {"id"=>"bb-Trailblazer::Circuit::Left-c",
    "sourceRef"=>:bb,
    "targetRef"=>:c},
   {"id"=>"bb-Trailblazer::Circuit::Right-d",
    "sourceRef"=>:bb,
    "targetRef"=>:d},
   {"id"=>"c-Trailblazer::Circuit::Right-e", "sourceRef"=>:c, "targetRef"=>:e},
   {"id"=>"c-Trailblazer::Circuit::Left-e", "sourceRef"=>:c, "targetRef"=>:e},
   {"id"=>"d-Trailblazer::Circuit::Left-e", "sourceRef"=>:d, "targetRef"=>:e},
   {"id"=>"e-Trailblazer::Circuit::Right-f", "sourceRef"=>:e, "targetRef"=>:f},
   {"id"=>"e-Trailblazer::Circuit::Left-f", "sourceRef"=>:e, "targetRef"=>:f}]}

end
