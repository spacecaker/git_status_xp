.class Landroid/preference/MultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/MultiSelectListPreference;


# direct methods
.method constructor <init>(Landroid/preference/MultiSelectListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    #getter for: Landroid/preference/MultiSelectListPreference;->mClickedDialogEntryIndices:[Z
    invoke-static {v0}, Landroid/preference/MultiSelectListPreference;->access$0(Landroid/preference/MultiSelectListPreference;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 59
    return-void
.end method
