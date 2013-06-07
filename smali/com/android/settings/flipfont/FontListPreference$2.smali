.class Lcom/android/settings/flipfont/FontListPreference$2;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/flipfont/FontListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipfont/FontListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/flipfont/FontListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z
    invoke-static {v0, v1}, Lcom/android/settings/flipfont/FontListPreference;->access$002(Lcom/android/settings/flipfont/FontListPreference;Z)Z

    .line 118
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 119
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListPreference;->restartNow()V

    .line 120
    return-void
.end method
