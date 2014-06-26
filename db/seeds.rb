# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Rol administrador
role_admin = Role.create(name: 'admin')

#admin
admin = User.create(name: 'The Influence', email: 'dev@theinfluence.co', password: 'theinfluence', roles: [role_admin])
#test user
user = User.create(name: 'Test User', email: 'tonklis@gmail.com', password: 'theinfluence')

#categories
cat_general = Category.create(description: 'Generales')
cat_funcionalidad = Category.create(description: 'Funcionalidades')
cat_servicio = Category.create(description: 'Servicio')
cat_agrega = Category.create(description: 'Agrega')

#products
producto_escucha = Product.create(name: 'Escucha', description: 'Imagina tener una investigación de mercado en tiempo real acerca de tu negocio y poder accionar para influir en la conversación.\nEscucha analiza las millones de publicaciones que ocurren en redes sociales y la web cada segundo para mostrarte únicamente las relacionadas a tu marca, competencia o industria. Con herramientas extremadamente fáciles de usar, tu equipo podrá tomar acción para influir en la conversación. Cada elemento en Escucha es cliqueable, con lo que podrás observar las conversaciones naturales que ocurren entre los consumidores y entender la motivación detrás de sus acciones. Con inteligencia artificial, Escucha interpreta correctamente el español y la jerga de tu país.', short_description: 'Escucha, participa e influye en las conversaciones online.', image: '/assets/mediaimac.png', benefits: 'Obtén una ventaja al conocer lo que el mercado piensa de tu marca y competencia.\nOptimiza tus esfuerzos de mercadeo con feedback inmediato y recomendaciones basadas en datos reales.\nResponde a las dudas de tus clientes directamente desde las redes sociales que utilizan.\nGenera prospectos al participar en cada conversación relacionada a tu industria o competencia.\nArranca ya. Con extrema facilidad de uso, no es necesario gastar tiempo en cursos o entrenamientos.', active: true)

#assets
asset_social_listening = Asset.create(product_id: producto_escucha.id, name: "Social Listening", url: '/assets/socialsocial.png' , url_thumb: '/assets/socialsocial.png', asset_type: 'Imagen')
asset_influenciadores = Asset.create(product_id: producto_escucha.id, name: "Influenciadores", url: '/assets/socialinfluenciadores.png' , url_thumb: '/assets/socialinfluenciadores.png', asset_type: 'Imagen')
asset_community = Asset.create(product_id: producto_escucha.id, name: "Community", url: '/assets/socialcommunity.png' , url_thumb: '/assets/socialcommunity.png', asset_type: 'Imagen')
asset_customer_care = Asset.create(product_id: producto_escucha.id, name: "Customer Care", url: '/assets/socialcustomer2.png' , url_thumb: '/assets/socialcustomer2.png', asset_type: 'Imagen')

#combos
escucha_combo_basico = Combo.create(product_id: producto_escucha.id, name: 'Básico', description: 'Ideal para empresas medianas.', price: 750.00)
escucha_combo_completo = Combo.create(product_id: producto_escucha.id, name: 'Completo', description: 'Ideal para empresas grandes con más de una marca.', price: 1449.00)
escucha_combo_avanzado = Combo.create(product_id: producto_escucha.id, name: 'Avanzado', description: 'Ideal para multi-nacionales con varias marcas.', price: 2350.00)

#addons
addon_topico = Addon.create(name: 'Tópicos', category_id: cat_general.id)
addon_perfiles = Addon.create(name: 'Perfiles', category_id: cat_general.id)
addon_central_info = Addon.create(name: 'Central de Información', category_id: cat_funcionalidad.id)
addon_sentimiento = Addon.create(name: 'Sentimiento', category_id: cat_funcionalidad.id)
addon_conversaciones = Addon.create(name: 'Conversaciones', category_id: cat_funcionalidad.id)
addon_audiencias = Addon.create(name: 'Audiencias', category_id: cat_funcionalidad.id)
addon_influenciadores = Addon.create(name: 'Influenciadores', category_id: cat_funcionalidad.id)
addon_publicar = Addon.create(name: 'Cuando Publicar', category_id: cat_funcionalidad.id)
addon_mapa_calor = Addon.create(name: 'Mapa de Calor', category_id: cat_funcionalidad.id)
addon_analisis_picos = Addon.create(name: 'Análisis de Picos', category_id: cat_funcionalidad.id)
addon_tendencias = Addon.create(name: 'Tendencias', category_id: cat_funcionalidad.id)
addon_sitios_top = Addon.create(name: 'Sitios Top', category_id: cat_funcionalidad.id)
addon_soporte_cliente = Addon.create(name: 'Soporte al Cliente Social', category_id: cat_funcionalidad.id)
addon_servicio_cliente = Addon.create(name: 'Servicio al Cliente', category_id: cat_servicio.id)
addon_consultoria = Addon.create(name: 'Consultoría Estratégica', category_id: cat_servicio.id)

#purchasable addons
addon_topico_adicional = Addon.create(name: 'Tópico Adicional', category_id: cat_agrega.id)
addon_perfil_adicional = Addon.create(name: 'Perfil Adicional', category_id: cat_agrega.id)
addon_hora_estrategia_adicional = Addon.create(name: 'Hora de Estrategia Adicional', category_id: cat_agrega.id)

#addons_combos
AddonsCombo.create(addon_id: addon_topico.id, combo_id: escucha_combo_basico.id, quantity: 3)
AddonsCombo.create(addon_id: addon_topico.id, combo_id: escucha_combo_completo.id, quantity: 8)
AddonsCombo.create(addon_id: addon_topico.id, combo_id: escucha_combo_avanzado.id, quantity: 20)

AddonsCombo.create(addon_id: addon_perfiles.id, combo_id: escucha_combo_basico.id, quantity: 1)
AddonsCombo.create(addon_id: addon_perfiles.id, combo_id: escucha_combo_completo.id, quantity: 1)
AddonsCombo.create(addon_id: addon_perfiles.id, combo_id: escucha_combo_avanzado.id, quantity: 2)

AddonsCombo.create(addon_id: addon_central_info.id, combo_id: escucha_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_central_info.id, combo_id: escucha_combo_completo.id, active: true)
AddonsCombo.create(addon_id: addon_central_info.id, combo_id: escucha_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_sentimiento.id, combo_id: escucha_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_sentimiento.id, combo_id: escucha_combo_completo.id, active: true)
AddonsCombo.create(addon_id: addon_sentimiento.id, combo_id: escucha_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_conversaciones.id, combo_id: escucha_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_conversaciones.id, combo_id: escucha_combo_completo.id, active: true)
AddonsCombo.create(addon_id: addon_conversaciones.id, combo_id: escucha_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_audiencias.id, combo_id: escucha_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_audiencias.id, combo_id: escucha_combo_completo.id, active: true)
AddonsCombo.create(addon_id: addon_audiencias.id, combo_id: escucha_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_influenciadores.id, combo_id: escucha_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_influenciadores.id, combo_id: escucha_combo_completo.id, active: true)
AddonsCombo.create(addon_id: addon_influenciadores.id, combo_id: escucha_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_publicar.id, combo_id: escucha_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_publicar.id, combo_id: escucha_combo_completo.id, active: true)
AddonsCombo.create(addon_id: addon_publicar.id, combo_id: escucha_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_mapa_calor.id, combo_id: escucha_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_mapa_calor.id, combo_id: escucha_combo_completo.id, active: true)
AddonsCombo.create(addon_id: addon_mapa_calor.id, combo_id: escucha_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_analisis_picos.id, combo_id: escucha_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_analisis_picos.id, combo_id: escucha_combo_completo.id, active: true)
AddonsCombo.create(addon_id: addon_analisis_picos.id, combo_id: escucha_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_tendencias.id, combo_id: escucha_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_tendencias.id, combo_id: escucha_combo_completo.id, active: true)
AddonsCombo.create(addon_id: addon_tendencias.id, combo_id: escucha_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_sitios_top.id, combo_id: escucha_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_sitios_top.id, combo_id: escucha_combo_completo.id, active: true)
AddonsCombo.create(addon_id: addon_sitios_top.id, combo_id: escucha_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_soporte_cliente.id, combo_id: escucha_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_soporte_cliente.id, combo_id: escucha_combo_completo.id, active: true)
AddonsCombo.create(addon_id: addon_soporte_cliente.id, combo_id: escucha_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_servicio_cliente.id, combo_id: escucha_combo_basico.id, description: 'Respuesta por email y chat.')
AddonsCombo.create(addon_id: addon_servicio_cliente.id, combo_id: escucha_combo_completo.id, description: 'Respuesta por email y chat.')
AddonsCombo.create(addon_id: addon_servicio_cliente.id, combo_id: escucha_combo_avanzado.id, description: 'Respuesta por email, chat y teléfono.')

AddonsCombo.create(addon_id: addon_consultoria.id, combo_id: escucha_combo_basico.id, description: '1 hr/mes')
AddonsCombo.create(addon_id: addon_consultoria.id, combo_id: escucha_combo_completo.id, description: '2 hrs/mes')
AddonsCombo.create(addon_id: addon_consultoria.id, combo_id: escucha_combo_avanzado.id, description: '4 hrs/mes')

#purchasable addons
AddonsCombo.create(addon_id: addon_topico_adicional.id, combo_id: escucha_combo_basico.id, price: 249.00, purchasable: true)
AddonsCombo.create(addon_id: addon_topico_adicional.id, combo_id: escucha_combo_completo.id, price: 189.00, purchasable: true)
AddonsCombo.create(addon_id: addon_topico_adicional.id, combo_id: escucha_combo_avanzado.id, price: 119.00, purchasable: true)

AddonsCombo.create(addon_id: addon_perfil_adicional.id, combo_id: escucha_combo_basico.id, price: 299.00, purchasable: true)
AddonsCombo.create(addon_id: addon_perfil_adicional.id, combo_id: escucha_combo_completo.id, price: 199.00, purchasable: true)
AddonsCombo.create(addon_id: addon_perfil_adicional.id, combo_id: escucha_combo_avanzado.id, price: 99.00, purchasable: true)

AddonsCombo.create(addon_id: addon_hora_estrategia_adicional.id, combo_id: escucha_combo_basico.id, price: 200.00, purchasable: true)
AddonsCombo.create(addon_id: addon_hora_estrategia_adicional.id, combo_id: escucha_combo_completo.id, price: 200.00, purchasable: true)
AddonsCombo.create(addon_id: addon_hora_estrategia_adicional.id, combo_id: escucha_combo_avanzado.id, price: 200.00, purchasable: true)

#contrato
contract = Contract.create(details: "<p>General</p> <ul><li>Nombre de la empresa: </li><li>Nombre del contacto dentro de la empresa: </li><li>Vendedor: </li><li>Nombre del proyecto: </li><li>Duración del contrato: </li><li>Fecha de inicio del proyecto: </li><li>Recargo de configuración: </li><li>Monto total del contrato:</li></ul><p>Términos de pago</p><ul><li>Fecha de facturación: </li><li>Fecha de envío de la primera factura: </li><li>Otros recargos: </li></ul>")

user.contracts << contract
user.save!


