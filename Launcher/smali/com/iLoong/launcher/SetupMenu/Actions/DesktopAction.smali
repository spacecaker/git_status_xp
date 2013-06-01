.class public Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction;
.super Lcom/iLoong/launcher/SetupMenu/Actions/ac;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/iLoong/launcher/SetupMenu/Actions/ac;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction$DesktopSettingActivity;

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction;->a(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public static a()V
    .locals 4

    const/16 v3, 0x3ee

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction;

    const-class v2, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(ILcom/iLoong/launcher/SetupMenu/Actions/ac;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x7f0c0002

    invoke-static {v2}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction;->d:Landroid/os/Bundle;

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v2, 0x7f0c0003

    invoke-static {v2}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction;->d:Landroid/os/Bundle;

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const v2, 0x7f0c000b

    invoke-static {v2}, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction$DesktopSettingActivity;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction;->d:Landroid/os/Bundle;

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    const v2, 0x7f0c000e

    invoke-static {v2}, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction$DesktopSettingActivity;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_2
    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction;->d:Landroid/os/Bundle;

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    const v2, 0x7f0c000d

    invoke-static {v2}, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction$DesktopSettingActivity;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction;->d:Landroid/os/Bundle;

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    const v0, 0x7f0c000f

    invoke-static {v0}, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction$DesktopSettingActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction;->d:Landroid/os/Bundle;

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method protected b()V
    .locals 0

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction;->j()V

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method
