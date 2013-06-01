.class Lcom/iLoong/launcher/SetupMenu/Actions/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/SetupMenu/Actions/BackupDesktopAction$BackupActivity;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/SetupMenu/Actions/BackupDesktopAction$BackupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/r;->a:Lcom/iLoong/launcher/SetupMenu/Actions/BackupDesktopAction$BackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/r;->a:Lcom/iLoong/launcher/SetupMenu/Actions/BackupDesktopAction$BackupActivity;

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/Actions/BackupDesktopAction$BackupActivity;->a()V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/r;->a:Lcom/iLoong/launcher/SetupMenu/Actions/BackupDesktopAction$BackupActivity;

    invoke-static {v0}, Lcom/iLoong/launcher/SetupMenu/Actions/BackupDesktopAction$BackupActivity;->a(Lcom/iLoong/launcher/SetupMenu/Actions/BackupDesktopAction$BackupActivity;)V

    return-void
.end method
