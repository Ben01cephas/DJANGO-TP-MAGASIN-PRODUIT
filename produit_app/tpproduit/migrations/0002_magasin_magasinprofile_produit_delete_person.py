# Generated by Django 4.0.2 on 2022-02-06 15:33

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('tpproduit', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Magasin',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200)),
                ('country', models.CharField(choices=[('BJ', 'BENIN'), ('BF', 'BURKINA FASO'), ('BJ', "COTE D'IVOIRE"), ('SN', 'SENEGAL')], max_length=200)),
                ('created_at', models.DateField(auto_now_add=True)),
                ('updated_at', models.DateField(auto_now=True)),
            ],
            options={
                'ordering': ['name'],
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='MagasinProfile',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('email', models.EmailField(max_length=255, unique=True)),
                ('phone', models.CharField(max_length=30, unique=True)),
                ('created_at', models.DateField(auto_now_add=True)),
                ('updated_at', models.DateField(auto_now=True)),
                ('magasin', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, related_name='magasin_profile', to='tpproduit.magasin')),
            ],
        ),
        migrations.CreateModel(
            name='Produit',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200)),
                ('country', models.CharField(choices=[('BJ', 'BENIN'), ('BF', 'BURKINA FASO'), ('BJ', "COTE D'IVOIRE"), ('SN', 'SENEGAL')], max_length=200)),
                ('created_at', models.DateField(auto_now_add=True)),
                ('updated_at', models.DateField(auto_now=True)),
                ('price', models.DecimalField(decimal_places=2, max_digits=10)),
                ('magasin', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='product_magasin', to='tpproduit.magasin')),
            ],
            options={
                'ordering': ['name'],
                'abstract': False,
            },
        ),
        migrations.DeleteModel(
            name='Person',
        ),
    ]
