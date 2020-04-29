require_relative 'pocket'
require_relative 'controller'
require_relative 'router'


csv_file = File.join(__dir__, 'posts.csv')
pocket = Pocket.new(csv_file)
controller = Controller.new

router = Router.new(controller)

# Start the app
router.run
