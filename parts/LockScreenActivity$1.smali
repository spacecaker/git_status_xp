.class Lcom/lidroid/parts/LockScreenActivity$1;
.super Ljava/lang/Object;
.source "LockScreenActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/parts/LockScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/parts/LockScreenActivity;


# direct methods
.method constructor <init>(Lcom/lidroid/parts/LockScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lidroid/parts/LockScreenActivity$1;->this$0:Lcom/lidroid/parts/LockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "sharedPreference"
    .parameter "key"

    .prologue
    .line 103
    const-string v2, "lockscreen_custom_app_toggle"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/lidroid/parts/LockScreenActivity$1;->this$0:Lcom/lidroid/parts/LockScreenActivity;

    invoke-virtual {v2, p2}, Lcom/lidroid/parts/LockScreenActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 107
    .local v1, sp:Landroid/preference/CheckBoxPreference;
    iget-object v2, p0, Lcom/lidroid/parts/LockScreenActivity$1;->this$0:Lcom/lidroid/parts/LockScreenActivity;

    const-string v3, "lockscreen_rotary_unlock_down"

    invoke-virtual {v2, v3}, Lcom/lidroid/parts/LockScreenActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 108
    .local v0, downUnlock:Landroid/preference/Preference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/lidroid/parts/LockScreenActivity$1;->this$0:Lcom/lidroid/parts/LockScreenActivity;

    invoke-virtual {v2}, Lcom/lidroid/parts/LockScreenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_custom_app_activity"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    iget-object v2, p0, Lcom/lidroid/parts/LockScreenActivity$1;->this$0:Lcom/lidroid/parts/LockScreenActivity;

    #getter for: Lcom/lidroid/parts/LockScreenActivity;->mCustomAppActivityPref:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/lidroid/parts/LockScreenActivity;->access$000(Lcom/lidroid/parts/LockScreenActivity;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v2, p0, Lcom/lidroid/parts/LockScreenActivity$1;->this$0:Lcom/lidroid/parts/LockScreenActivity;

    #getter for: Lcom/lidroid/parts/LockScreenActivity;->mDragDownUnlockPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/lidroid/parts/LockScreenActivity;->access$100(Lcom/lidroid/parts/LockScreenActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
