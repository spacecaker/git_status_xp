.class Lcom/android/settings/DevelopmentSettings$AdbEnableObserver;
.super Landroid/database/ContentObserver;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DevelopmentSettings;)V
    .locals 2
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings$AdbEnableObserver;->this$0:Lcom/android/settings/DevelopmentSettings;

    .line 277
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 278
    const-string v0, "DevelopmentSettings"

    const-string v1, "AdbEnableObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    .line 283
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 284
    const-string v0, "DevelopmentSettings"

    const-string v1, "AdbEnableObserver().onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$AdbEnableObserver;->this$0:Lcom/android/settings/DevelopmentSettings;

    #getter for: Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/DevelopmentSettings;->access$300(Lcom/android/settings/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$AdbEnableObserver;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v1}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 287
    return-void

    :cond_0
    move v1, v3

    .line 285
    goto :goto_0
.end method
