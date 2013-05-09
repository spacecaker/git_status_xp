.class public Lcom/ghareeb/BatteryMod/DataController;
.super Landroid/content/BroadcastReceiver;
.source "DataController.java"


# instance fields
.field private bc:Lcom/ghareeb/BatteryMod/BatteryController;

.field handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ghareeb/BatteryMod/BatteryController;)V
    .locals 2
    .parameter "context"
    .parameter "bc"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/ghareeb/BatteryMod/DataController;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/ghareeb/BatteryMod/DataController;->bc:Lcom/ghareeb/BatteryMod/BatteryController;

    .line 21
    invoke-virtual {p0}, Lcom/ghareeb/BatteryMod/DataController;->getVal()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/ghareeb/BatteryMod/BatteryController;->val:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/ghareeb/BatteryMod/DataController;->getAnim()I

    move-result v1

    iput v1, p2, Lcom/ghareeb/BatteryMod/BatteryController;->anim:I

    .line 23
    invoke-virtual {p0}, Lcom/ghareeb/BatteryMod/DataController;->getVis()I

    move-result v1

    iput v1, p2, Lcom/ghareeb/BatteryMod/BatteryController;->vis:I

    .line 24
    iget-object v1, p2, Lcom/ghareeb/BatteryMod/BatteryController;->Receiver:Landroid/content/Intent;

    invoke-virtual {p2, v1}, Lcom/ghareeb/BatteryMod/BatteryController;->DoWork(Landroid/content/Intent;)V

    .line 25
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 26
    .local v0, ifilter:Landroid/content/IntentFilter;
    const-string v1, "com.ghareeb.OGMod.DATA_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/ghareeb/BatteryMod/DataController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    return-void
.end method


# virtual methods
.method public getAnim()I
    .locals 6

    .prologue
    .line 84
    const/4 v2, -0x1

    .line 86
    .local v2, val:I
    :try_start_0
    iget-object v3, p0, Lcom/ghareeb/BatteryMod/DataController;->mContext:Landroid/content/Context;

    const-string v4, "OG_Mod"

    .line 87
    const/4 v5, 0x1

    .line 86
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 88
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v3, "Anim"

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 93
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :goto_0
    return v2

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, a:Ljava/lang/Exception;
    const-string v3, "OGMod"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getAnim() - Err:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getVal()Ljava/lang/String;
    .locals 6

    .prologue
    .line 70
    const-string v2, "Default"

    .line 72
    .local v2, val:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/ghareeb/BatteryMod/DataController;->mContext:Landroid/content/Context;

    const-string v4, "OG_Mod"

    .line 73
    const/4 v5, 0x1

    .line 72
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 74
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v3, "BatteryStyle"

    const-string v4, "Default"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 80
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, a:Ljava/lang/Exception;
    const-string v3, "OGMod"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getVal() - Err:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getVis()I
    .locals 6

    .prologue
    .line 96
    const/16 v2, 0x8

    .line 98
    .local v2, val:I
    :try_start_0
    iget-object v3, p0, Lcom/ghareeb/BatteryMod/DataController;->mContext:Landroid/content/Context;

    const-string v4, "OG_Mod"

    .line 99
    const/4 v5, 0x1

    .line 98
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 100
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v3, "Visibility"

    const/16 v4, 0x8

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 105
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :goto_0
    return v2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, a:Ljava/lang/Exception;
    const-string v3, "OGMod"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getVis() - Err:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v6, 0x8

    const/4 v5, -0x1

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.ghareeb.OGMod.DATA_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    const-string v1, "data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ghareeb/BatteryMod/DataController;->bc:Lcom/ghareeb/BatteryMod/BatteryController;

    iget v2, v2, Lcom/ghareeb/BatteryMod/BatteryController;->anim:I

    iget-object v3, p0, Lcom/ghareeb/BatteryMod/DataController;->bc:Lcom/ghareeb/BatteryMod/BatteryController;

    iget v3, v3, Lcom/ghareeb/BatteryMod/BatteryController;->vis:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ghareeb/BatteryMod/DataController;->saveData(Ljava/lang/String;II)V

    .line 37
    iget-object v1, p0, Lcom/ghareeb/BatteryMod/DataController;->bc:Lcom/ghareeb/BatteryMod/BatteryController;

    const-string v2, "data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ghareeb/BatteryMod/BatteryController;->val:Ljava/lang/String;

    .line 39
    :cond_0
    const-string v1, "Anim"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/ghareeb/BatteryMod/DataController;->bc:Lcom/ghareeb/BatteryMod/BatteryController;

    iget-object v1, v1, Lcom/ghareeb/BatteryMod/BatteryController;->val:Ljava/lang/String;

    const-string v2, "Anim"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/ghareeb/BatteryMod/DataController;->bc:Lcom/ghareeb/BatteryMod/BatteryController;

    iget v3, v3, Lcom/ghareeb/BatteryMod/BatteryController;->vis:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/ghareeb/BatteryMod/DataController;->saveData(Ljava/lang/String;II)V

    .line 41
    iget-object v1, p0, Lcom/ghareeb/BatteryMod/DataController;->bc:Lcom/ghareeb/BatteryMod/BatteryController;

    const-string v2, "Anim"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/ghareeb/BatteryMod/BatteryController;->anim:I

    .line 43
    :cond_1
    const-string v1, "Visibility"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    iget-object v1, p0, Lcom/ghareeb/BatteryMod/DataController;->bc:Lcom/ghareeb/BatteryMod/BatteryController;

    iget-object v1, v1, Lcom/ghareeb/BatteryMod/BatteryController;->val:Ljava/lang/String;

    iget-object v2, p0, Lcom/ghareeb/BatteryMod/DataController;->bc:Lcom/ghareeb/BatteryMod/BatteryController;

    iget v2, v2, Lcom/ghareeb/BatteryMod/BatteryController;->anim:I

    const-string v3, "Visibility"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/ghareeb/BatteryMod/DataController;->saveData(Ljava/lang/String;II)V

    .line 45
    iget-object v1, p0, Lcom/ghareeb/BatteryMod/DataController;->bc:Lcom/ghareeb/BatteryMod/BatteryController;

    const-string v2, "Visibility"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/ghareeb/BatteryMod/BatteryController;->vis:I

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/ghareeb/BatteryMod/DataController;->bc:Lcom/ghareeb/BatteryMod/BatteryController;

    iget-object v2, p0, Lcom/ghareeb/BatteryMod/DataController;->bc:Lcom/ghareeb/BatteryMod/BatteryController;

    iget-object v2, v2, Lcom/ghareeb/BatteryMod/BatteryController;->Receiver:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/ghareeb/BatteryMod/BatteryController;->DoWork(Landroid/content/Intent;)V

    .line 49
    :cond_3
    return-void
.end method

.method public saveData(Ljava/lang/String;II)V
    .locals 6
    .parameter "val"
    .parameter "anim"
    .parameter "vis"

    .prologue
    .line 53
    :try_start_0
    iget-object v3, p0, Lcom/ghareeb/BatteryMod/DataController;->mContext:Landroid/content/Context;

    const-string v4, "OG_Mod"

    .line 54
    const/4 v5, 0x5

    .line 53
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 55
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 56
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "BatteryStyle"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    const-string v3, "Visibility"

    invoke-interface {v1, v3, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 58
    const-string v3, "Anim"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    const-string v3, "OGMod"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "saveData("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, a:Ljava/lang/Exception;
    const-string v3, "OGMod"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "saveData("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - Err:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
