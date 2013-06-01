.class Lcom/iLoong/launcher/SetupMenu/Actions/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/SetupMenu/Actions/BackupDesktopAction$BackupActivity;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/SetupMenu/Actions/BackupDesktopAction$BackupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/t;->a:Lcom/iLoong/launcher/SetupMenu/Actions/BackupDesktopAction$BackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/t;->a:Lcom/iLoong/launcher/SetupMenu/Actions/BackupDesktopAction$BackupActivity;

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/Actions/BackupDesktopAction$BackupActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/t;->a:Lcom/iLoong/launcher/SetupMenu/Actions/BackupDesktopAction$BackupActivity;

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/Actions/BackupDesktopAction$BackupActivity;->finish()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    const/16 v1, 0x459

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(I)V

    :cond_0
    return-void
.end method
