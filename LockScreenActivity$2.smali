.class Lcom/lidroid/parts/LockScreenActivity$2;
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
    .line 116
    iput-object p1, p0, Lcom/lidroid/parts/LockScreenActivity$2;->this$0:Lcom/lidroid/parts/LockScreenActivity;

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
    const-string v1, "lockscreen_custom_icon_style"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/lidroid/parts/LockScreenActivity$2;->this$0:Lcom/lidroid/parts/LockScreenActivity;

    invoke-virtual {v1, p2}, Lcom/lidroid/parts/LockScreenActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 124
    .local v0, sp:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/lidroid/parts/LockScreenActivity$2;->this$0:Lcom/lidroid/parts/LockScreenActivity;

    invoke-virtual {v1}, Lcom/lidroid/parts/LockScreenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p2, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/lidroid/parts/LockScreenActivity$2;->this$0:Lcom/lidroid/parts/LockScreenActivity;

    invoke-virtual {v1}, Lcom/lidroid/parts/LockScreenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, p2, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
