.class public Lcom/iLoong/launcher/SetupMenu/Actions/x;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/iLoong/launcher/SetupMenu/Actions/x;


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:Ljava/util/HashMap;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iLoong/launcher/SetupMenu/Actions/x;->c:Lcom/iLoong/launcher/SetupMenu/Actions/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/x;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized a()Lcom/iLoong/launcher/SetupMenu/Actions/x;
    .locals 2

    const-class v1, Lcom/iLoong/launcher/SetupMenu/Actions/x;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iLoong/launcher/SetupMenu/Actions/x;->c:Lcom/iLoong/launcher/SetupMenu/Actions/x;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iLoong/launcher/SetupMenu/Actions/x;

    invoke-direct {v0}, Lcom/iLoong/launcher/SetupMenu/Actions/x;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/SetupMenu/Actions/x;->c:Lcom/iLoong/launcher/SetupMenu/Actions/x;

    :cond_0
    sget-object v0, Lcom/iLoong/launcher/SetupMenu/Actions/x;->c:Lcom/iLoong/launcher/SetupMenu/Actions/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(ILcom/iLoong/launcher/SetupMenu/Actions/ac;)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iLoong/launcher/SetupMenu/Actions/aa;

    invoke-virtual {p2}, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->k()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/iLoong/launcher/SetupMenu/Actions/aa;->a(ILandroid/os/Bundle;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f0c000b

    invoke-static {v0}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->br:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    const v0, 0x7f0c000e

    invoke-static {v0}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_1

    :cond_4
    const v0, 0x7f0c000f

    invoke-static {v0}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "-1"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    const v0, 0x7f0c0003

    invoke-static {v0}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->Z:I

    :goto_2
    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v2, v0

    goto/16 :goto_1

    :cond_6
    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aa:I

    goto :goto_2
.end method

.method public a(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/x;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/Actions/ac;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->f()V

    :cond_0
    return-void
.end method

.method public declared-synchronized a(ILcom/iLoong/launcher/SetupMenu/Actions/aa;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILcom/iLoong/launcher/SetupMenu/Actions/ac;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/x;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/Actions/ac;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/x;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/x;->d:Landroid/content/Context;

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/SystemAction;->a()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction;->a()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/EffectAction;->a()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/z;->a()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/i;->a()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/ab;->a()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/ShareAction;->a()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/l;->a()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction;->a()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/BackupDesktopAction;->a()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/c;->a()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/v;->a()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/UpdateFeedbackAction;->a()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/ag;->a()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/u;->a()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/a;->a()V

    return-void
.end method

.method b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/x;->d:Landroid/content/Context;

    return-object v0
.end method

.method public b(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/x;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/Actions/ac;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->g()V

    invoke-direct {p0, p1, v0}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->b(ILcom/iLoong/launcher/SetupMenu/Actions/ac;)V

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/Actions/ac;->h()V

    :cond_0
    return-void
.end method

.method public c(I)Lcom/iLoong/launcher/SetupMenu/Actions/ac;
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/x;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/Actions/ac;

    return-object v0
.end method
