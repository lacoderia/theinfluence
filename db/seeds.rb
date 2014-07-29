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
cat_reporte_incluye = Category.create(description: 'El reporte incluye')

#products
producto_escucha = Product.create(name: 'Escucha', description: 'Imagina tener una investigación de mercado en tiempo real acerca de tu negocio y poder accionar para influir en la conversación.<br><br>Escucha analiza las millones de publicaciones que ocurren en redes sociales y la web cada segundo para mostrarte únicamente las relacionadas a tu marca, competencia o industria.<br><br>Con herramientas extremadamente fáciles de usar, tu equipo podrá tomar acción para influir en la conversación. Cada elemento en Escucha es cliqueable, con lo que podrás observar las conversaciones naturales que ocurren entre los consumidores y entender la motivación detrás de sus acciones. Con inteligencia artificial, Escucha interpreta correctamente el español y la jerga de tu país.', short_description: 'Escucha, participa e influye en las conversaciones online.', image: '/assets/icons/icon-escucha.png', benefits: 'Obtén una ventaja al conocer lo que el mercado piensa de tu marca y competencia.<br>Optimiza tus esfuerzos de mercadeo con feedback inmediato y recomendaciones basadas en datos reales.<br>Responde a las dudas de tus clientes directamente desde las redes sociales que utilizan.<br>Genera prospectos al participar en cada conversación relacionada a tu industria o competencia.<br>Arranca ya. Con extrema facilidad de uso, no es necesario gastar tiempo en cursos o entrenamientos.', active: true, signin_link: "http://www.tracx.com/")

producto_viraliza = Product.create(name: 'Viraliza', description: 'Viraliza construye el perfil psicológico del espectador ideal utilizando datos internos e históricos. Luego se integra con 16 DMPs para identificar a segmentos que han expresado intención de compra y tienen el mismo interés que el espectador ideal construido previamente. Con esto, tu video es servido al las personas más aptas a consumir y compartirlo.', short_description: 'Muestra tu video a las personas que lo compartirán con sus amigos.', image: '/assets/icons/icon-viraliza.png', benefits: 'Utiliza tecnología y bases de datos robustas para servir tu video a las personas indicadas.<br>Genera publicidad gratuita cada vez que alguien comparte tu video.<br>Enfoca tu inversión en las personas más aptas a apreciar tu contenido.', active: true, footnote: 'Nota: En promedio vemos un CTR de 4-7% cuando el espectador realiza alguna acción como suscribirse, descargar un cupon, visitar una página, ingresar información de contacto o cualquier otra función requerida por el anunciante.', signin_link: "https://www.viralgains.com/vg/")

producto_optimiza = Product.create(name: 'Optimiza', description: 'A la hora de comprar medios en redes sociales, hay docenas de variables que tomar en cuenta: precios de subasta en tiempo real, audiencia de ese momento y configuración ideal de elementos creativos. En vez de activar y desactivar las compras manualmente, deja que un algorítmo haga el trabajo por ti.<br><br>Optimiza invierte tu presupuesto de la forma más eficiente posible. Un algorítmo analiza docenas de variables en tiempo real para invertir, o dejar de invertir, en el momento óptimo. Es uno de 3 socios autorizados por Facebook a nivel global para comprar medios programáticamente utilizando sus datos completos.', short_description: 'Deja que un algorítmo compre tus medios en redes sociales y maximiza el rendimiento de tu inversión.', image: '/assets/icons/icon-optimiza.png', active: true, benefits: 'Planifica tu campaña con estimaciones de CPM y CPC antes de invertir.<br>Encuentra la combinación de elementos creativos que mejor responde a tu audiencia.<br>Reduce tus costos de medios en un 15-30% comparado al standard de la industria.<br>Visualiza el ROI de una campaña asignando un valor monetario a cada acción deseada.', signin_link: "https://login.unifiedsocial.com/login")

producto_monitorea = Product.create(name: 'Monitorea', description: 'Una campaña publicitaria es el resultado de meses planificación y una fuerte inversión. La meta es resonar con el mercado objetivo y posicionar a la marca, sin embargo, los resultados suelen ser distintos a lo esperado.<br><br>Monitorea es un reporte del desempeño de los primeros 10 días de una campaña de publicidad, permitiendo al anunciante hacer ajustes a la creatividad y reducir o incrementar su inversión en medios en base al rendimiento actual.', short_description: 'Mide la respuesta y efectividad de tu campaña publicitaria.', image: '/assets/icons/icon-monitorea.png', active: true, benefits: 'Conoce en detalle qué están diciendo las personas acerca de tu campaña en redes sociales.<br>Realiza comparaciones con campañas pasadas para medir su rendimiento.<br>Visualiza el perfil demográfico de las personas hablando acerca de la campaña.<br>Comprende qué hashtags funcionan mejor.<br>Recibe un listado de influenciadores positivos y negativos para enfocar tus esfuerzos de relaciones públicas.')

producto_compara = Product.create(name: 'Compara', description: 'La batalla por la preferencia del consumidor es una batalla feroz y ocurre en los medios. Contar con inteligencia y datos precisos acerca del desempeño de tus competidores y las preferencias del consumidor en tu industria es invaluable para ser líder.<br><br>Compara es un reporte ejecutivo que despliega un benchmarking de tu competencia y el estado de tu industria. Con datos reveladores podrás comprender qué hace bien tu competencia y cómo posicionar a tu empresa.', short_description: 'Compara el estado de tu industria y competencia en redes sociales.', image: '/assets/icons/icon-compara.png', benefits: 'Conoce en detalle cómo perciben los consumidores a tu marca y a cada uno de tus competidores.<br>Con reportes periódicos compara el rendimiento de tus esfuerzos de mercadeo sobre el posicionamiento de tu empresa.<br>Descubre cuáles son los temas de conversación que más funcionan para cada uno de tus competidores.<br>Visualiza qué categorías de productos son las más habladas y solicitadas.', active: true)

producto_influye = Product.create(name: 'Influye', description: 'Hoy en día el consumidor tiene la capacidad de investigar y rápidamente consultar en línea antes de decidirse por una marca en particular. Las recomendaciones por parte de personas de confianza afectan la intención de compra más que cualquier medio. En redes sociales, estas conversaciones se pueden viralizar en cuestión de minutos construir o destruir un negocio o gobierno. Saber qué personas tienen el mayor impacto dentro de tu industria para generar boca en boca es extremadamente valioso.<br><br>Influye es un reporte acerca de las personas más influyentes en redes sociales para tu negocio. Nuestro algoritmo otorga un punteo a personas que hablan acerca de tu industria, tomando en cuenta alcance, cantidad y calidad de respuesta.', short_description: 'Identifica a las personas más influyentes para tu negocio.', image: '/assets/icons/icon-influye.png', active: true, benefits: 'Conoce en quiénes debes de enfocar tus esfuerzos de mercadeo para amplificar y viralizar tu mensaje.<br>Contrarresta posibles crisis con relaciones públicas enfocadas en las personas que pueden dañar tu marca.<br>Identifica a los influenciadores positivos y negativos de tu competencia.')

#assets
asset_escucha_1 = Asset.create(product_id: producto_escucha.id, name: "Escucha es un focus group en tiempo real. Conoce exactamente qué dicen las personas acerca de tu marca, las de tu competencia o una categoría dentro de tu industria.",                url: '/assets/gallery/large/Escucha1.png' , url_thumb: '/assets/gallery/thumbnails/t_escucha1.jpg', asset_type: 'Imagen')
asset_escucha_2 = Asset.create(product_id: producto_escucha.id, name: "Optimiza el manejo de tus comunidades al conocer qué contenidos funcionan mejor y cuándo publicados para máximo rendimiento.",                                                         url: '/assets/gallery/large/Escucha2.png' , url_thumb: '/assets/gallery/thumbnails/t_escucha2.jpg', asset_type: 'Imagen')
asset_escucha_3 = Asset.create(product_id: producto_escucha.id, name: "Analiza tus hashtags o campañas de mercadeo para evaluar si están llegando al mercado objetivo deseado.",                                                                              url: '/assets/gallery/large/Escucha3.png' , url_thumb: '/assets/gallery/thumbnails/t_escucha3.jpg', asset_type: 'Imagen')
asset_escucha_4 = Asset.create(product_id: producto_escucha.id, name: "Genera prospectos al participar en las conversaciones cuando alguien exprese intención de compra por tu producto / servicio o se queje de tu competencia.",                            url: '/assets/gallery/large/Escucha4.png' , url_thumb: '/assets/gallery/thumbnails/t_escucha4.jpg', asset_type: 'Imagen')
asset_escucha_5 = Asset.create(product_id: producto_escucha.id, name: "Mejora tu servicio al cliente y responde a dudas todas las redes sociales directamente desde la aplicación.",                                                                          url: '/assets/gallery/large/Escucha5.png' , url_thumb: '/assets/gallery/thumbnails/t_escucha5.jpg', asset_type: 'Imagen')
asset_escucha_6 = Asset.create(product_id: producto_escucha.id, name: "Identifica a las personas más influyentes para tu negocio y genera listas con cientos de influenciadores para tu negocio, competencia o industria.",                                   url: '/assets/gallery/large/Escucha6.png' , url_thumb: '/assets/gallery/thumbnails/t_escucha6.jpg', asset_type: 'Imagen')
asset_escucha_7 = Asset.create(product_id: producto_escucha.id, name: "Cada elemento en Escucha es cliqueable, con lo que podrás observar las conversaciones naturales que ocurren entre los consumidores y entender la motivación detrás de sus acciones.",  url: '/assets/gallery/large/Escucha7.png' , url_thumb: '/assets/gallery/thumbnails/t_escucha7.jpg', asset_type: 'Imagen')

asset_optimiza_1 = Asset.create(product_id: producto_optimiza.id, name: "Planifica tu campaña con estimaciones de CPM y CPC antes de invertir. Luego en base al costo, ajusta como quieres distribuir tu presupuesto.", url: '/assets/gallery/large/Optimiza1.png' , url_thumb: '/assets/gallery/thumbnails/t_optimiza1.jpg', asset_type: 'Imagen')
asset_optimiza_2 = Asset.create(product_id: producto_optimiza.id, name: "Colabora con tu agencia y equipo de mercadeo sobre las iniciativa a realizar. Anota comentarios y sube archivos para que todos lo vean.",      url: '/assets/gallery/large/Optimiza2.png' , url_thumb: '/assets/gallery/thumbnails/t_optimiza2.jpg', asset_type: 'Imagen')
asset_optimiza_3 = Asset.create(product_id: producto_optimiza.id, name: "Una vez lanzada tu campaña, visualiza el rendimiento de cada iniciativa en tiempo real.",                                                      url: '/assets/gallery/large/Optimiza3.png' , url_thumb: '/assets/gallery/thumbnails/t_optimiza3.jpg', asset_type: 'Imagen')
asset_optimiza_4 = Asset.create(product_id: producto_optimiza.id, name: "Una vez lanzada tu campaña, visualiza el rendimiento de cada iniciativa en tiempo real.",                                                      url: '/assets/gallery/large/Optimiza4.png' , url_thumb: '/assets/gallery/thumbnails/t_optimiza4.jpg', asset_type: 'Imagen')
asset_optimiza_5 = Asset.create(product_id: producto_optimiza.id, name: "Visualiza el ROI de cada iniciativa.",                                                                                                         url: '/assets/gallery/large/Optimiza5.png' , url_thumb: '/assets/gallery/thumbnails/t_optimiza5.jpg', asset_type: 'Imagen')
asset_optimiza_6 = Asset.create(product_id: producto_optimiza.id, name: "Amplifica tus publicaciones más exitosas en el momento justo para optimizar su rendimiento.",                                                  url: '/assets/gallery/large/Optimiza6.png' , url_thumb: '/assets/gallery/thumbnails/t_optimiza6.jpg', asset_type: 'Imagen')
asset_optimiza_7 = Asset.create(product_id: producto_optimiza.id, name: "Visualiza tendencias de tu audiencia, organizado por detalle demográfico, geográfico, género y más.",                                          url: '/assets/gallery/large/Optimiza7.png' , url_thumb: '/assets/gallery/thumbnails/t_optimiza7.jpg', asset_type: 'Imagen')
asset_optimiza_8 = Asset.create(product_id: producto_optimiza.id, name: "Con el tiempo, las publicaciones dejan de ser vistas, hasta que eventualmente mueren. Entérate cuando esto ocurra para publicar nuevamente.",  url: '/assets/gallery/large/Optimiza8.png' , url_thumb: '/assets/gallery/thumbnails/t_optimiza8.jpg', asset_type: 'Imagen')

asset_viraliza_1 = Asset.create(product_id: producto_viraliza.id, name: "Utiliza tecnología y bases de datos robustas para servir tu video a las personas indicadas.",                        url: '/assets/gallery/large/Viraliza1.png' , url_thumb: '/assets/gallery/thumbnails/t_viraliza1.jpg', asset_type: 'Imagen')
asset_viraliza_2 = Asset.create(product_id: producto_viraliza.id, name: "Visualiza como tu campaña responde y es optimizada en tiempo real.",                                                 url: '/assets/gallery/large/Viraliza2.png' , url_thumb: '/assets/gallery/thumbnails/t_viraliza2.png', asset_type: 'Imagen')
asset_viraliza_3 = Asset.create(product_id: producto_viraliza.id, name: "Para que un video cuente como “visto”, el espectador debe darle reproducir al video y verlo durante 30 segundos.",   url: '/assets/gallery/large/Viraliza3.png' , url_thumb: '/assets/gallery/thumbnails/t_viraliza3.jpg', asset_type: 'Imagen')
asset_viraliza_4 = Asset.create(product_id: producto_viraliza.id, name: "Colocación en móvil.",                                                                                               url: '/assets/gallery/large/Viraliza4.png' , url_thumb: '/assets/gallery/thumbnails/t_viraliza4.jpg', asset_type: 'Imagen')
asset_viraliza_5 = Asset.create(product_id: producto_viraliza.id, name: "Colocación en juegos.",                                                                                              url: '/assets/gallery/large/Viraliza5.png' , url_thumb: '/assets/gallery/thumbnails/t_viraliza5.jpg', asset_type: 'Imagen')
asset_viraliza_6 = Asset.create(product_id: producto_viraliza.id, name: "Distribución a través de influenciadores.",                                                                          url: '/assets/gallery/large/Viraliza6.png' , url_thumb: '/assets/gallery/thumbnails/t_viraliza6.jpg', asset_type: 'Imagen')
asset_viraliza_7 = Asset.create(product_id: producto_viraliza.id, name: "Distribución en todas las redes sociales.",                                                                          url: '/assets/gallery/large/Viraliza7.png' , url_thumb: '/assets/gallery/thumbnails/t_viraliza7.jpg', asset_type: 'Imagen')

asset_monitorea_1 = Asset.create(product_id: producto_monitorea.id, name: "Mide la respuesta y efectividad de tu campaña publicitaria.",        url: '/assets/gallery/large/Monitorea1.png' , url_thumb: '/assets/gallery/thumbnails/t_monitorea1.png', asset_type: 'Imagen')
asset_monitorea_2 = Asset.create(product_id: producto_monitorea.id, name: "Identifica el impacto por región que tuvo tu campaña publicitaria.", url: '/assets/gallery/large/Monitorea2.png' , url_thumb: '/assets/gallery/thumbnails/t_monitorea2.png', asset_type: 'Imagen')
asset_monitorea_3 = Asset.create(product_id: producto_monitorea.id, name: "Mide la efectividad y respuesta de tu campaña publicitaria.",        url: '/assets/gallery/large/Monitorea3.png' , url_thumb: '/assets/gallery/thumbnails/t_monitorea3.png', asset_type: 'Imagen')
asset_monitorea_4 = Asset.create(product_id: producto_monitorea.id, name: "No dejes escapar ningún detalle de tu campaña publicitaria.",        url: '/assets/gallery/large/Monitorea4.png' , url_thumb: '/assets/gallery/thumbnails/t_monitorea4.png', asset_type: 'Imagen')

asset_compara_0 = Asset.create(product_id: producto_compara.id, name: "Compara el estado de tu industria y competencia en redes sociales.", url: '/assets/gallery/large/Compara0.png' , url_thumb: '/assets/gallery/thumbnails/t_compara0.png', asset_type: 'Imagen')
asset_compara_1 = Asset.create(product_id: producto_compara.id, name: "Compara tu industria en todas las redes sociales.",                  url: '/assets/gallery/large/Compara1.png' , url_thumb: '/assets/gallery/thumbnails/t_compara1.png', asset_type: 'Imagen')
asset_compara_2 = Asset.create(product_id: producto_compara.id, name: "Compara hasta el último detalle de tu competencia con tus marcas.",  url: '/assets/gallery/large/Compara2.png' , url_thumb: '/assets/gallery/thumbnails/t_compara2.png', asset_type: 'Imagen')
asset_compara_3 = Asset.create(product_id: producto_compara.id, name: "Compara los mensajes más influyentes.",                              url: '/assets/gallery/large/Compara3.png' , url_thumb: '/assets/gallery/thumbnails/t_compara3.png', asset_type: 'Imagen')

asset_influye_1 = Asset.create(product_id: producto_influye.id, name: "Identifica a las personas más influyentes para tu negocio.",       url: '/assets/gallery/large/Influye1.png' , url_thumb: '/assets/gallery/thumbnails/t_influye1.png', asset_type: 'Imagen')
asset_influye_1 = Asset.create(product_id: producto_influye.id, name: "Influye a las personas más relevantes de tu marca.",               url: '/assets/gallery/large/Influye2.png' , url_thumb: '/assets/gallery/thumbnails/t_influye2.png', asset_type: 'Imagen')
asset_influye_1 = Asset.create(product_id: producto_influye.id, name: "Influye y identifica a las personas que hablan mal de tu marca.",  url: '/assets/gallery/large/Influye3.png' , url_thumb: '/assets/gallery/thumbnails/t_influye3.png', asset_type: 'Imagen')
asset_influye_1 = Asset.create(product_id: producto_influye.id, name: "Mide el impacto que tienen las personas más influyentes.",         url: '/assets/gallery/large/Influye4.png' , url_thumb: '/assets/gallery/thumbnails/t_influye4.png', asset_type: 'Imagen')

#combos
escucha_combo_basico = Combo.create(product_id: producto_escucha.id, name: 'Básico', description: 'Ideal para empresas medianas.', price: 750.00)
escucha_combo_completo = Combo.create(product_id: producto_escucha.id, name: 'Completo', description: 'Ideal para empresas grandes con más de una marca.', price: 1449.00)
escucha_combo_avanzado = Combo.create(product_id: producto_escucha.id, name: 'Avanzado', description: 'Ideal para multi-nacionales con varias marcas.', price: 2350.00)

viraliza_combo_10000 = Combo.create(product_id: producto_viraliza.id, name: 'Básico', description: 'Puntual.', price: 10000)
viraliza_combo_20000 = Combo.create(product_id: producto_viraliza.id, name: 'Completo', description: 'Mediano.', price: 20000)
viraliza_combo_50000 = Combo.create(product_id: producto_viraliza.id, name: 'Avanzado', description: 'Masivo.', price: 50000)

monitorea_combo_basico = Combo.create(product_id: producto_monitorea.id, name: 'Básico', description:'Mide la efectividad de tu campaña.', price: 499.00)
monitorea_combo_avanzado = Combo.create(product_id: producto_monitorea.id, name: 'Avanzado', description:'Influye en la efectividad de tu campaña.', price: 850.00)

compara_combo_basico = Combo.create(product_id: producto_compara.id, name: 'Básico', description:'Reporte básico de tu industria.', price: 1199)
compara_combo_avanzado = Combo.create(product_id: producto_compara.id, name: 'Avanzado', description:'Reporte completo de tu industria.', price: 1699)

influye_combo_basico = Combo.create(product_id: producto_influye.id, name: 'Básico', description: 'Identifica a tus influenciadores.', price: 499)
influye_combo_avanzado = Combo.create(product_id: producto_influye.id, name: 'Avanzado', description: 'Identifica a los influenciadores de tu industria.', price: 850)

#addons escucha
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

#addons influye 
addon_influye_influenciadores_positivos = Addon.create(name: 'Influenciadores positivos de tu marca', category_id: cat_reporte_incluye.id) 
addon_influye_influenciadores_negativos = Addon.create(name: 'Influenciadores negativos de tu marca', category_id: cat_reporte_incluye.id) 
addon_influye_palabras_mas_usadas = Addon.create(name: 'Palabras más usadas por influenciadores', category_id: cat_reporte_incluye.id) 
addon_influye_influenciadores_positivos_competencia = Addon.create(name: 'Influenciadores positivos de tu competencia', category_id: cat_reporte_incluye.id) 
addon_influye_influenciadores_negativos_competencia = Addon.create(name: 'Influenciadores negativos de tu competencia', category_id: cat_reporte_incluye.id) 
addon_influye_perfil_influenciadores = Addon.create(name: 'Perfil completo de top 5 influenciadores', category_id: cat_reporte_incluye.id) 

#addons compara
addon_compara_voice_social_media = Addon.create(name: 'Share of Voice de Social Media', category_id: cat_reporte_incluye.id) 
addon_compara_top_trending_topics = Addon.create(name: 'Top Trending Topics', category_id: cat_reporte_incluye.id) 
addon_compara_imagenes_compartidas = Addon.create(name: 'Imágenes Más Compartidas', category_id: cat_reporte_incluye.id) 
addon_compara_canales_usados = Addon.create(name: 'Canales Más Usados', category_id: cat_reporte_incluye.id) 
addon_compara_perfiles_demograficos = Addon.create(name: 'Perfiles Demográficos', category_id: cat_reporte_incluye.id) 
addon_compara_influenciadores = Addon.create(name: 'Influenciadores', category_id: cat_reporte_incluye.id) 
addon_compara_categorias_productos = Addon.create(name: 'Categorías de Productos', category_id: cat_reporte_incluye.id) 

#addons monitorea
addon_monitorea_menciones_personas_audiencia = Addon.create(name: 'Menciones, personas y audiencia', category_id: cat_reporte_incluye.id)
addon_monitorea_interacciones = Addon.create(name: 'Menciones, personas y audiencia', category_id: cat_reporte_incluye.id)
addon_monitorea_conversaciones = Addon.create(name: 'Conversaciones', category_id: cat_reporte_incluye.id) 
addon_monitorea_temas_conversacion = Addon.create(name: 'Temas de conversación', category_id: cat_reporte_incluye.id) 
addon_monitorea_alcance = Addon.create(name: 'Alcance', category_id: cat_reporte_incluye.id) 
addon_monitorea_canales = Addon.create(name: 'Canales', category_id: cat_reporte_incluye.id) 
addon_monitorea_top_posts = Addon.create(name: 'Top Posts', category_id: cat_reporte_incluye.id) 
addon_monitorea_mapa_calor = Addon.create(name: 'Mapa de Calor', category_id: cat_reporte_incluye.id) 
addon_monitorea_sentimiento = Addon.create(name: 'Sentimiento', category_id: cat_reporte_incluye.id) 
addon_monitorea_influenciadores = Addon.create(name: 'Influenciadores', category_id: cat_reporte_incluye.id) 

#addons viraliza
addon_visitas_pagadas = Addon.create(name: 'Visitas pagadas', category_id: cat_general.id)
addon_visitas_virales = Addon.create(name: 'Visitas virales', category_id: cat_general.id, description: 'Viralización depende de casos de éxito previos.')
addon_visitas_totales = Addon.create(name: 'Visitas totales', category_id: cat_general.id)
addon_cpv = Addon.create(name: 'CPV', category_id: cat_general.id)
addon_ecpv = Addon.create(name: 'ECPV', category_id: cat_general.id)
addon_viraliza_cantidad = Addon.create(name: 'Adicional', category_id: cat_agrega.id)

#purchasable addons escucha
addon_topico_adicional = Addon.create(name: 'Tópico Adicional', category_id: cat_agrega.id)
addon_perfil_adicional = Addon.create(name: 'Perfil Adicional', category_id: cat_agrega.id)
addon_hora_estrategia_adicional = Addon.create(name: 'Hora de Estrategia Adicional', category_id: cat_agrega.id)

#addons_combos influye
AddonsCombo.create(addon_id: addon_influye_influenciadores_positivos.id, combo_id: influye_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_influye_influenciadores_positivos.id, combo_id: influye_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_influye_influenciadores_negativos.id, combo_id: influye_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_influye_influenciadores_negativos.id, combo_id: influye_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_influye_palabras_mas_usadas.id, combo_id: influye_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_influye_palabras_mas_usadas.id, combo_id: influye_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_influye_influenciadores_positivos_competencia.id, combo_id: influye_combo_basico.id, active: false)
AddonsCombo.create(addon_id: addon_influye_influenciadores_positivos_competencia.id, combo_id: influye_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_influye_influenciadores_negativos_competencia.id, combo_id: influye_combo_basico.id, active: false)
AddonsCombo.create(addon_id: addon_influye_influenciadores_negativos_competencia.id, combo_id: influye_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_influye_perfil_influenciadores.id, combo_id: influye_combo_basico.id, active: false)
AddonsCombo.create(addon_id: addon_influye_perfil_influenciadores.id, combo_id: influye_combo_avanzado.id, active: true)

#addons_combos compara
AddonsCombo.create(addon_id: addon_compara_voice_social_media.id, combo_id: compara_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_compara_voice_social_media.id, combo_id: compara_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_compara_top_trending_topics.id, combo_id: compara_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_compara_top_trending_topics.id, combo_id: compara_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_compara_imagenes_compartidas.id, combo_id: compara_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_compara_imagenes_compartidas.id, combo_id: compara_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_compara_canales_usados.id, combo_id: compara_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_compara_canales_usados.id, combo_id: compara_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_compara_perfiles_demograficos.id, combo_id: compara_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_compara_perfiles_demograficos.id, combo_id: compara_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_compara_influenciadores.id, combo_id: compara_combo_basico.id, active: false)
AddonsCombo.create(addon_id: addon_compara_influenciadores.id, combo_id: compara_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_compara_categorias_productos.id, combo_id: compara_combo_basico.id, active: false)
AddonsCombo.create(addon_id: addon_compara_categorias_productos.id, combo_id: compara_combo_avanzado.id, active: true)

#addons_combos viraliza
AddonsCombo.create(addon_id: addon_visitas_pagadas.id, combo_id: viraliza_combo_10000.id, description: '53,333')
AddonsCombo.create(addon_id: addon_visitas_pagadas.id, combo_id: viraliza_combo_20000.id, description: '110,345')
AddonsCombo.create(addon_id: addon_visitas_pagadas.id, combo_id: viraliza_combo_50000.id, description: '285,714')

AddonsCombo.create(addon_id: addon_visitas_virales.id, combo_id: viraliza_combo_10000.id, description: '17,778')
AddonsCombo.create(addon_id: addon_visitas_virales.id, combo_id: viraliza_combo_20000.id, description: '36,782')
AddonsCombo.create(addon_id: addon_visitas_virales.id, combo_id: viraliza_combo_50000.id, description: '95,238')

AddonsCombo.create(addon_id: addon_visitas_totales.id, combo_id: viraliza_combo_10000.id, description: '71,111')
AddonsCombo.create(addon_id: addon_visitas_totales.id, combo_id: viraliza_combo_20000.id, description: '147,126')
AddonsCombo.create(addon_id: addon_visitas_totales.id, combo_id: viraliza_combo_50000.id, description: '380,952')

AddonsCombo.create(addon_id: addon_cpv.id, combo_id: viraliza_combo_10000.id, description: '$ 0.188')
AddonsCombo.create(addon_id: addon_cpv.id, combo_id: viraliza_combo_20000.id, description: '$ 0.181')
AddonsCombo.create(addon_id: addon_cpv.id, combo_id: viraliza_combo_50000.id, description: '$ 0.175')

AddonsCombo.create(addon_id: addon_ecpv.id, combo_id: viraliza_combo_10000.id, description: '$ 0.141')
AddonsCombo.create(addon_id: addon_ecpv.id, combo_id: viraliza_combo_20000.id, description: '$ 0.136')
AddonsCombo.create(addon_id: addon_ecpv.id, combo_id: viraliza_combo_50000.id, description: '$ 0.131')

#AddonsCombo.create(addon_id: addon_viraliza_cantidad.id, combo_id: viraliza_combo_10000.id, purchasable: true, price: 10000)
#AddonsCombo.create(addon_id: addon_viraliza_cantidad.id, combo_id: viraliza_combo_20000.id, purchasable: true, price: 20000)
#AddonsCombo.create(addon_id: addon_viraliza_cantidad.id, combo_id: viraliza_combo_50000.id, purchasable: true, price: 50000)

#addons_combos_monitorea
AddonsCombo.create(addon_id: addon_monitorea_menciones_personas_audiencia.id, combo_id: monitorea_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_monitorea_menciones_personas_audiencia.id, combo_id: monitorea_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_monitorea_interacciones.id, combo_id: monitorea_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_monitorea_interacciones.id, combo_id: monitorea_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_monitorea_conversaciones.id, combo_id: monitorea_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_monitorea_conversaciones.id, combo_id: monitorea_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_monitorea_temas_conversacion.id, combo_id: monitorea_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_monitorea_temas_conversacion.id, combo_id: monitorea_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_monitorea_alcance.id, combo_id: monitorea_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_monitorea_alcance.id, combo_id: monitorea_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_monitorea_canales.id, combo_id: monitorea_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_monitorea_canales.id, combo_id: monitorea_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_monitorea_top_posts.id, combo_id: monitorea_combo_basico.id, active: true)
AddonsCombo.create(addon_id: addon_monitorea_top_posts.id, combo_id: monitorea_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_monitorea_mapa_calor.id, combo_id: monitorea_combo_basico.id, active: false)
AddonsCombo.create(addon_id: addon_monitorea_mapa_calor.id, combo_id: monitorea_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_monitorea_sentimiento.id, combo_id: monitorea_combo_basico.id, active: false)
AddonsCombo.create(addon_id: addon_monitorea_sentimiento.id, combo_id: monitorea_combo_avanzado.id, active: true)

AddonsCombo.create(addon_id: addon_monitorea_influenciadores.id, combo_id: monitorea_combo_basico.id, active: false)
AddonsCombo.create(addon_id: addon_monitorea_influenciadores.id, combo_id: monitorea_combo_avanzado.id, active: true)

#addons_combos escucha 
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

user_pc = PurchasesCombo.create(user_id: user.id, combo_id: escucha_combo_completo.id, total_price: 1449.00, user_name: 'benja', password: 'pass123')

user_pa = PurchasesAddon.create(user_id: user.id, addon_id: addon_perfil_adicional.id, total_price: 398.00, quantity: 2 )

user.contracts << contract
user.save!
