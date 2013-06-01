.class Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
.super Ljava/lang/Object;


# static fields
.field static final KEY_DOWN:I = 0x0

.field static final KEY_TYPED:I = 0x2

.field static final KEY_TYPED_CHINESE:I = 0x3

.field static final KEY_UP:I = 0x1


# instance fields
.field keyChar:C

.field keyCharacters:Ljava/lang/String;

.field keyCode:I

.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

.field timeStamp:J

.field type:I


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidInput;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
