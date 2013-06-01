.class Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;
.super Ljava/lang/Object;


# instance fields
.field final array:Z

.field needsComma:Z

.field final synthetic this$0:Lcom/badlogic/gdx/utils/JsonWriter;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/utils/JsonWriter;Z)V
    .locals 2

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->this$0:Lcom/badlogic/gdx/utils/JsonWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->array:Z

    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    if-eqz p2, :cond_0

    const/16 v0, 0x5b

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    return-void

    :cond_0
    const/16 v0, 0x7b

    goto :goto_0
.end method


# virtual methods
.method close()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->this$0:Lcom/badlogic/gdx/utils/JsonWriter;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->array:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x5d

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    return-void

    :cond_0
    const/16 v0, 0x7d

    goto :goto_0
.end method
