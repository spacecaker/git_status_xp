.class Lcom/lidroid/parts/MainActivity$1;
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
    .line 65
    iput-object p1, p0, Lcom/lidroid/parts/MainActivity$1;->this$0:Lcom/lidroid/parts/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "sharedPreference"
    .parameter "key"

    .prologue
    .line 68
    const-string v2, "lockscreen_style_pref"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/lidroid/parts/MainActivity$1;->this$0:Lcom/lidroid/parts/MainActivity;

    invoke-virtual {v2, p2}, Lcom/lidroid/parts/MainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 72
    .local v1, sp:Landroid/preference/ListPreference;
    iget-object v2, p0, Lcom/lidroid/parts/MainActivity$1;->this$0:Lcom/lidroid/parts/MainActivity;

    const-string v3, "lockscreen_detail"

    invoke-virtual {v2, v3}, Lcom/lidroid/parts/MainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 73
    .local v0, lockDetail:Landroid/preference/Preference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_1

    .line 74
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 77
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
