.class Lcom/lidroid/parts/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/parts/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/parts/MainActivity;


# direct methods
.method constructor <init>(Lcom/lidroid/parts/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lidroid/parts/MainActivity$2;->this$0:Lcom/lidroid/parts/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "sharedPreference"
    .parameter "key"

    .prologue
    .line 85
    const-string v2, "window_animations"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/lidroid/parts/MainActivity$2;->this$0:Lcom/lidroid/parts/MainActivity;

    const-string v3, "window_animations"

    invoke-virtual {v2, v3}, Lcom/lidroid/parts/MainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 91
    .local v0, sp:Landroid/preference/ListPreference;
    :try_start_0
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 92
    .local v1, val:F
    iget-object v2, p0, Lcom/lidroid/parts/MainActivity$2;->this$0:Lcom/lidroid/parts/MainActivity;

    #getter for: Lcom/lidroid/parts/MainActivity;->mWindowManager:Landroid/view/IWindowManager;
    invoke-static {v2}, Lcom/lidroid/parts/MainActivity;->access$000(Lcom/lidroid/parts/MainActivity;)Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 93
    .end local v1           #val:F
    :catch_0
    move-exception v2

    goto :goto_0

    .line 94
    :catch_1
    move-exception v2

    goto :goto_0
.end method
