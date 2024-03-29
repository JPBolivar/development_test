# Generated by Django 2.2.5 on 2019-09-18 18:29

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('flight_search', '0002_itinerario'),
    ]

    operations = [
        migrations.CreateModel(
            name='Pasajero',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=30)),
                ('direccion', models.CharField(max_length=20)),
                ('ciudad', models.CharField(max_length=30)),
                ('pais', models.CharField(max_length=30)),
                ('telCasa', models.CharField(max_length=30)),
                ('telMobile', models.CharField(max_length=30)),
                ('email', models.CharField(max_length=30)),
            ],
        ),
        migrations.CreateModel(
            name='Reserva',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('clave', models.CharField(max_length=20)),
                ('costoTotal', models.IntegerField(default=0)),
                ('vueloId', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='flight_search.Vuelo')),
            ],
        ),
        migrations.CreateModel(
            name='ReservaPasajero',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('pasajeroId', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='flight_search.Pasajero')),
                ('reservaId', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='flight_search.Reserva')),
            ],
        ),
    ]
