#include <gazebo/gazebo.hh>

namespace gazebo {
    class WorldPluginwlRobot : public WorldPlugin {
        public: WorldPluginwlRobot() : WorldPlugin() {
            printf("Welcome to Vineeth's World!\n");
        }
        
        public: void Load(physics::WorldPtr _world, sdf::ElementPtr _sdf) {
        }
    };
    GZ_REGISTER_WORLD_PLUGIN(WorldPluginwlRobot)
}
