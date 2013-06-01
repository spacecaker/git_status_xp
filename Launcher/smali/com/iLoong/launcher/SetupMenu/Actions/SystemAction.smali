.class public Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction;
.super Lcom/iLoong/launcher/SetupMenu/Actions/ac;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/SetupMenu/Actions/ac;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static a()V
    .locals 7

    const/16 v6, 0x459

    const/16 v5, 0x44e

    const/16 v4, 0x3ef

    const/16 v3, 0x3ec

    const/16 v2, 0x3ea

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    invoke-static {v4}, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction;->b(I)Lcom/iLoong/launcher/SetupMenu/Actions/ac;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(ILcom/iLoong/launcher/SetupMenu/Actions/ac;)V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    invoke-static {v3}, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction;->b(I)Lcom/iLoong/launcher/SetupMenu/Actions/ac;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(ILcom/iLoong/launcher/SetupMenu/Actions/ac;)V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    invoke-static {v2}, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction;->b(I)Lcom/iLoong/launcher/SetupMenu/Actions/ac;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(ILcom/iLoong/launcher/SetupMenu/Actions/ac;)V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    invoke-static {v5}, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction;->b(I)Lcom/iLoong/launcher/SetupMenu/Actions/ac;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(ILcom/iLoong/launcher/SetupMenu/Actions/ac;)V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    invoke-static {v6}, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction;->b(I)Lcom/iLoong/launcher/SetupMenu/Actions/ac;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(ILcom/iLoong/launcher/SetupMenu/Actions/ac;)V

    return-void
.end method

.method private static b(I)Lcom/iLoong/launcher/SetupMenu/Actions/ac;
    .locals 2

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    new-instance v0, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction;

    invoke-direct {v0, p0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction;-><init>(ILjava/lang/String;)V

    :cond_0
    return-object v0

    :sswitch_0
    const-string v1, "android.settings.SETTINGS"

    goto :goto_0

    :sswitch_1
    const-string v1, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    goto :goto_0

    :sswitch_2
    const-string v1, "android.intent.action.SET_WALLPAPER"

    goto :goto_0

    :sswitch_3
    const-string v1, "android.intent.action.SCREEN_OFF"

    goto :goto_0

    :sswitch_4
    const-string v1, "ACTION_RESTART"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_2
        0x3ec -> :sswitch_1
        0x3ef -> :sswitch_0
        0x44e -> :sswitch_3
        0x459 -> :sswitch_4
    .end sparse-switch
.end method

.method public static d()V
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/iLoong/launcher/desktop/iLoongLauncher;->q:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/iLoong/launcher/desktop/iLoongLauncher;->p:Ljava/lang/String;

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->t()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction$ResestActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private l()V
    .locals 4

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction$LockScreenAdmin;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.app.extra.ADD_EXPLANATION"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction;->a:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction;->i()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction;->j()V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->l()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction;->l()V

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction;->d()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_2
        0x3ec -> :sswitch_1
        0x3ef -> :sswitch_0
        0x44e -> :sswitch_3
        0x459 -> :sswitch_4
    .end sparse-switch
.end method

.method public c()V
    .locals 0

    return-void
.end method
