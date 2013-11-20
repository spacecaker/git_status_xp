.class public Lcom/lidroid/systemui/quickpanel/RecentAppsButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "RecentAppsButton.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    .line 10
    const-string v0, "toggleRecentApps"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/SystemSettingsButton;->mType:Ljava/lang/String;

    .line 11
    const/4 v0, 0x3

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SystemSettingsButton;->mState:I

    .line 13
    return-void
.end method

.method private animateCollapse()V
    .locals 3

    .prologue
    .line 378
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/RecentAppsButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 379
    .local v0, sbm:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 380
    return-void
.end method

.method private toggleRecentAppsWithReflections()V
    .locals 12

    .prologue
    .line 74
    :try_start_0
    const-string v7, "android.os.ServiceManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 75
    .local v3, serviceManagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v7, "getService"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 76
    .local v2, getService:Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "statusbar"

    aput-object v9, v7, v8

    invoke-virtual {v2, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 77
    .local v0, binder:Landroid/os/IBinder;
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 78
    .local v4, statusBarClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const-string v8, "asInterface"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/os/IBinder;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 79
    .local v5, statusBarObject:Ljava/lang/Object;
    const-string v7, "toggleRecentApps"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 80
    .local v6, toggleRecentApps:Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 81
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v2           #getService:Ljava/lang/reflect/Method;
    .end local v3           #serviceManagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #statusBarClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #statusBarObject:Ljava/lang/Object;
    .end local v6           #toggleRecentApps:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v1

    .line 85
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected getText()I
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f08003a

    return v0
.end method

.method protected handleLongClick()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method protected toggleState()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/RecentAppsButton;->animateCollapse()V

    .line 64
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/RecentAppsButton;->toggleRecentAppsWithReflections()V

    .line 66
    return-void
.end method

.method protected updateState()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x3

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/RecentAppsButton;->mState:I

    .line 69
    const v0, 0x7f02011a

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/RecentAppsButton;->mIcon:I

    .line 71
    return-void
.end method
