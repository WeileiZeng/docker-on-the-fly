from nicegui import ui

ui.label('some label.\nThis looks like to be cool')
ui.icon('thumb_up')
ui.avatar('favorite_border', text_color='grey-11', square=True)
ui.avatar('img:https://nicegui.io/logo_square.png', color='blue-2')


ui.link('NiceGUI on GitHub', 'https://github.com/zauberzeug/nicegui')

ui.button('Click me!', on_click=lambda: ui.notify(f'You clicked me!'))

with ui.button('Click me!', on_click=lambda: badge.set_text(int(badge.text) + 1)):
    badge = ui.badge('0', color='red').props('floating')

toggle1 = ui.toggle([1, 2, 3], value=1)
toggle2 = ui.toggle({1: 'A', 2: 'B', 3: 'C'}).bind_value(toggle1, 'value')

radio1 = ui.radio([1, 2, 3], value=1).props('inline')
radio2 = ui.radio({1: 'A', 2: 'B', 3: 'C'}).props('inline').bind_value(radio1, 'value')


select1 = ui.select([1, 2, 3], value=1)
select2 = ui.select({1: 'One', 2: 'Two', 3: 'Three'}).bind_value(select1, 'value')

ui.joystick(color='blue', size=50,
            on_move=lambda e: coordinates.set_text(f"{e.x:.3f}, {e.y:.3f}"),
            on_end=lambda _: coordinates.set_text('0, 0'))
coordinates = ui.label('0, 0')

ui.input(label='Text', placeholder='start typing',
         on_change=lambda e: result.set_text('you typed: ' + e.value),
         validation={'Input too long': lambda value: len(value) < 20})
result = ui.label()

ui.image('https://picsum.photos/id/377/640/360')

with ui.image('https://cdn.stocksnap.io/img-thumbs/960w/airplane-sky_DYPWDEEILG.jpg'):
    ui.html('''
        <svg viewBox="0 0 960 638" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg">
        <circle cx="445" cy="300" r="100" fill="none" stroke="red" stroke-width="20" />
        </svg>
    ''').classes('bg-transparent')

#ui.image('360.jpg')

ui.image('https://images.unsplash.com/photo-1679771070455-062b82f16a47?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')

ui.image('steane-spc.pdf')

ui.run()
