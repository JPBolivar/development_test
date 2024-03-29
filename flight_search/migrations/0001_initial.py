# Generated by Django 2.2.5 on 2019-09-18 18:00

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Aerolinea',
            fields=[
                ('nombre', models.CharField(max_length=40, primary_key=True, serialize=False)),
                ('codigolata', models.CharField(max_length=30)),
            ],
        ),
        migrations.CreateModel(
            name='Aeropuerto',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=40)),
                ('codigolata', models.CharField(max_length=30)),
                ('ciudad', models.CharField(max_length=25)),
                ('pais', models.CharField(max_length=25)),
            ],
        ),
        migrations.CreateModel(
            name='Avion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('modeloAvion', models.CharField(choices=[('A318', 'AIRBUS_A318'), ('A319', 'AIRBUS_A319'), ('A320', 'AIRBUS_A320'), ('A330', 'AIRBUS_A330'), ('A340', 'AIRBUS_A340'), ('A350', 'AIRBUS_A350'), ('A380', 'AIRBUS_A380'), ('B717', 'BOEING_717'), ('B727', 'BOEING_727'), ('B737M', 'BOEING_737_MAX'), ('B747', 'BOEING_747'), ('B757', 'BOEING_757'), ('B767', 'BOEING_767'), ('B777', 'BOEING_777'), ('B787', 'BOEING_787')], max_length=40)),
                ('nroPasajeros', models.IntegerField()),
                ('aerolineaId', models.ForeignKey(db_column='aerolineaId', default=0, on_delete=django.db.models.deletion.CASCADE, to='flight_search.Aerolinea')),
            ],
        ),
        migrations.CreateModel(
            name='Vuelo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nroVuelo', models.CharField(max_length=30)),
                ('aerolineaId', models.ForeignKey(db_column='aerolineaId', default=0, on_delete=django.db.models.deletion.CASCADE, to='flight_search.Aerolinea')),
                ('destinoId', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='destinoId', to='flight_search.Aeropuerto')),
                ('origenId', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='origenId', to='flight_search.Aeropuerto')),
            ],
        ),
        migrations.CreateModel(
            name='VueloAvion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('avionId', models.ForeignKey(db_column='avionId', on_delete=django.db.models.deletion.CASCADE, to='flight_search.Avion')),
                ('vueloId', models.ForeignKey(db_column='vueloId', on_delete=django.db.models.deletion.CASCADE, to='flight_search.Vuelo')),
            ],
        ),
        migrations.CreateModel(
            name='Tarifa',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('clase', models.CharField(choices=[('EJ', 'EJECUTIVA'), ('EC', 'ECONOMICA')], max_length=40)),
                ('precio', models.BigIntegerField(default=0)),
                ('impuestos', models.BigIntegerField(default=0)),
                ('vueloId', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='flight_search.Vuelo')),
            ],
        ),
        migrations.CreateModel(
            name='Asiento',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fila', models.IntegerField(default=0)),
                ('letra', models.CharField(default='A', max_length=2)),
                ('vueloId', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='flight_search.Vuelo')),
            ],
        ),
    ]
