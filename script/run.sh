#  export PYTHONPATH=/data/researsh/pluto_annotation
export PYTHONPATH=$PYTHONPATH:$(pwd)

# 需要使用大于python3.9的环境，因为有些库使用了python3.9以上的新功能。

# 这里要给绝对路径
export NUPLAN_MAPS_ROOT='/data/researsh/pluto_annotation/nuplan/dataset/maps'
export NUPLAN_DATA_ROOT='/data/researsh/pluto_annotation/nuplan/dataset'
export NUPLAN_EXP_ROOT='/data/researsh/pluto_annotation/exp'
export HYDRA_FULL_ERROR=1
python run_training.py \
   py_func=cache +training=train_pluto \
   scenario_builder=nuplan_mini \
   cache.cache_path=./nuplan/exp/sanity_check \
   cache.cleanup_cache=true \
   scenario_filter=training_scenarios_tiny \
   worker=sequential