.class public Lcom/broadcom/bt/app/settings/ServiceExtraSettings;
.super Landroid/preference/PreferenceActivity;
.source "ServiceExtraSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field mPrefs:[Landroid/preference/CheckBoxPreference;

.field protected mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

.field mSvcpref:Landroid/preference/CheckBoxPreference;

.field mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    .line 80
    iput-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mPrefs:[Landroid/preference/CheckBoxPreference;

    .line 81
    iput-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mSvcpref:Landroid/preference/CheckBoxPreference;

    .line 83
    new-instance v0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/settings/ServiceExtraSettings$1;-><init>(Lcom/broadcom/bt/app/settings/ServiceExtraSettings;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/settings/ServiceExtraSettings;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 167
    const-string v0, "ServiceExtraSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 194
    const-string v0, "ServiceExtraSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 196
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const-string v2, "ServiceExtraSettings"

    .line 182
    const-string v1, "ServiceExtraSettings"

    const-string v1, "onPause"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    invoke-virtual {p0, p0}, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->unbindService(Landroid/content/ServiceConnection;)V

    .line 190
    return-void

    .line 186
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 187
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ServiceExtraSettings"

    const-string v1, "Unable to unregister receiver"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "pref"
    .parameter "val"

    .prologue
    const/4 v6, 0x0

    const-string v2, "bluetooth_map"

    .line 210
    const-string v2, "ServiceExtraSettings"

    const-string v3, "onPreferenceChange"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .line 212
    .local v0, enable:Z
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mSvcpref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_3

    .line 216
    if-eqz v0, :cond_2

    .line 218
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    const-string v3, "bluetooth_map"

    invoke-interface {v2, v3}, Lcom/broadcom/bt/service/framework/IServiceManager;->enableService(Ljava/lang/String;)V

    .line 258
    :cond_0
    :goto_1
    return v6

    .end local v0           #enable:Z
    .restart local p2
    :cond_1
    move v0, v6

    .line 211
    goto :goto_0

    .line 222
    .end local p2
    .restart local v0       #enable:Z
    :cond_2
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    const-string v3, "bluetooth_map"

    invoke-interface {v2, v3}, Lcom/broadcom/bt/service/framework/IServiceManager;->disableService(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 225
    :catch_0
    move-exception v2

    goto :goto_1

    .line 231
    :cond_3
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mPrefs:[Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 233
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mPrefs:[Landroid/preference/CheckBoxPreference;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mPrefs:[Landroid/preference/CheckBoxPreference;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_5

    .line 237
    if-eqz v0, :cond_4

    .line 239
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->providerID:Ljava/lang/String;

    iget-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceID:Ljava/lang/String;

    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/broadcom/bt/service/map/BluetoothMAP;->enableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mPrefs:[Landroid/preference/CheckBoxPreference;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 247
    :cond_4
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->providerID:Ljava/lang/String;

    iget-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceID:Ljava/lang/String;

    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/broadcom/bt/service/map/BluetoothMAP;->disableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mPrefs:[Landroid/preference/CheckBoxPreference;

    aget-object v2, v2, v1

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 233
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "pref"

    .prologue
    .line 205
    const-string v0, "ServiceExtraSettings"

    const-string v1, "onPreferenceClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 7
    .parameter "proxyObject"

    .prologue
    const/4 v6, 0x0

    .line 124
    const-string v4, "ServiceExtraSettings"

    const-string v5, "onProxyAvailable"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    check-cast p1, Lcom/broadcom/bt/service/map/BluetoothMAP;

    .end local p1
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 127
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mSvcpref:Landroid/preference/CheckBoxPreference;

    .line 128
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mSvcpref:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f08052f

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 129
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mSvcpref:Landroid/preference/CheckBoxPreference;

    const-string v5, "bluetooth_map"

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 130
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mSvcpref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mSvcpref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 132
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mSvcpref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mSvcpref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 135
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 136
    .local v1, pc:Landroid/preference/PreferenceCategory;
    const-string v4, "Registered Providers"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 141
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v4}, Lcom/broadcom/bt/service/map/BluetoothMAP;->enumRegisteredProviders()[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    move-result-object v4

    iput-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    .line 142
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    if-eqz v4, :cond_0

    .line 144
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    array-length v4, v4

    new-array v4, v4, [Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mPrefs:[Landroid/preference/CheckBoxPreference;

    .line 145
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 147
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 148
    .local v2, pref:Landroid/preference/CheckBoxPreference;
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->providerID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 150
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v4, v4, v0

    iget-boolean v4, v4, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->fEnabled:Z

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 151
    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 153
    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 154
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mPrefs:[Landroid/preference/CheckBoxPreference;

    aput-object v2, v4, v0

    .line 155
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v0           #i:I
    .end local v2           #pref:Landroid/preference/CheckBoxPreference;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v3, svcMgrIntent:Landroid/content/Intent;
    const-string v4, "com.broadcom.bt.app.system"

    const-string v5, "com.broadcom.bt.app.system.ServiceManager"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const/4 v4, 0x1

    invoke-virtual {p0, v3, p0, v4}, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 164
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 173
    const-string v1, "ServiceExtraSettings"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 175
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 176
    .local v0, prefScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 177
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    .line 178
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 263
    const-string v0, "ServiceExtraSettings"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {p2}, Lcom/broadcom/bt/service/framework/IServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/framework/IServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    const-string v1, "bluetooth_map"

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/framework/IServiceManager;->getServiceState(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mSvcpref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/broadcom/bt/app/settings/ServiceExtraSettings$2;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/settings/ServiceExtraSettings$2;-><init>(Lcom/broadcom/bt/app/settings/ServiceExtraSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    return-void

    .line 275
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mSvcpref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 201
    return-void
.end method
