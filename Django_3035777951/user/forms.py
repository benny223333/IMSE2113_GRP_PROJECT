from django import forms


class Login(forms.Form):
    Username = forms.CharField(max_length=300)
    Password = forms.CharField(max_length=300, widget=forms.PasswordInput)
