.class Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/badlogic/gdx/backends/android/AndroidInput$3;

.field private final synthetic val$input:Landroid/widget/EditText;

.field private final synthetic val$listener:Lcom/badlogic/gdx/Input$TextInputListener;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidInput$3;Lcom/badlogic/gdx/Input$TextInputListener;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidInput$3;

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;->val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1$1;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;->val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;->val$input:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2, v3}, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;Lcom/badlogic/gdx/Input$TextInputListener;Landroid/widget/EditText;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
