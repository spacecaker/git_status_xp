.class Lcom/lidroid/parts/MainActivity$5;
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
    .line 131
    iput-object p1, p0, Lcom/lidroid/parts/MainActivity$5;->this$0:Lcom/lidroid/parts/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPreference"
    .parameter "key"

    .prologue
    .line 134
    const-string v1, "creed_ui_style"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    const-string v1, "rom.features.parts"

    const-string v2, "rom.features.parts.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/lidroid/parts/MainActivity$5;->this$0:Lcom/lidroid/parts/MainActivity;

    invoke-virtual {v1, v0}, Lcom/lidroid/parts/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    iget-object v1, p0, Lcom/lidroid/parts/MainActivity$5;->this$0:Lcom/lidroid/parts/MainActivity;

    invoke-virtual {v1}, Lcom/lidroid/parts/MainActivity;->finish()V

    goto :goto_0
.end method
