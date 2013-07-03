.class Lcom/lidroid/parts/MainActivity$4;
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
    .line 116
    iput-object p1, p0, Lcom/lidroid/parts/MainActivity$4;->this$0:Lcom/lidroid/parts/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPreference"
    .parameter "key"

    .prologue
    .line 119
    const-string v1, "font_size"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/lidroid/parts/MainActivity$4;->this$0:Lcom/lidroid/parts/MainActivity;

    const-string v2, "font_size"

    invoke-virtual {v1, v2}, Lcom/lidroid/parts/MainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 124
    .local v0, sp:Landroid/preference/ListPreference;
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/parts/MainActivity$4;->this$0:Lcom/lidroid/parts/MainActivity;

    #getter for: Lcom/lidroid/parts/MainActivity;->mCurConfig:Landroid/content/res/Configuration;
    invoke-static {v1}, Lcom/lidroid/parts/MainActivity;->access$100(Lcom/lidroid/parts/MainActivity;)Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 125
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lidroid/parts/MainActivity$4;->this$0:Lcom/lidroid/parts/MainActivity;

    #getter for: Lcom/lidroid/parts/MainActivity;->mCurConfig:Landroid/content/res/Configuration;
    invoke-static {v2}, Lcom/lidroid/parts/MainActivity;->access$100(Lcom/lidroid/parts/MainActivity;)Landroid/content/res/Configuration;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    goto :goto_0
.end method
