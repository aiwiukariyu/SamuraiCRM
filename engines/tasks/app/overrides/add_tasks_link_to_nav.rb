Deface::Override.new(virtual_path: "layouts/samurai/application",
                    name: "add_tasks_link_to_nav",
                    insert_after: "[data-samurai-hook='main_nav']",
                    partial: "overrides/tasks_link",
                    namespaced: true,
                    original: "e4240ed32e1ed9537e652e1447358c357e034f33")
