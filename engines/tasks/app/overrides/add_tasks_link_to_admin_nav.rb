Deface::Override.new(virtual_path: "admin/shared/_nav",
                    name: "add_tasks_link_to_admin_nav",
                    insert_after: "[data-samurai-hook='admin_nav']",
                    partial: "overrides/tasks_admin_link",
                    namespaced: true,
                    original: "3c7673100436ba7915292b41fda3bc6f5b1afc9d")
