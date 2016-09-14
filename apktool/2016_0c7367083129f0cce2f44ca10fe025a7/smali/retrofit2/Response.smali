.class public final Lretrofit2/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final errorBody:Lokhttp3/ba;

.field private final rawResponse:Lokhttp3/ay;


# direct methods
.method private constructor <init>(Lokhttp3/ay;Ljava/lang/Object;Lokhttp3/ba;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ay;",
            "TT;",
            "Lokhttp3/ba;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/ay;

    .line 91
    iput-object p2, p0, Lretrofit2/Response;->body:Ljava/lang/Object;

    .line 92
    iput-object p3, p0, Lretrofit2/Response;->errorBody:Lokhttp3/ba;

    .line 93
    return-void
.end method

.method public static error(ILokhttp3/ba;)Lretrofit2/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lokhttp3/ba;",
            ")",
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    const/16 v0, 0x190

    if-ge p0, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 400: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    new-instance v0, Lokhttp3/az;

    invoke-direct {v0}, Lokhttp3/az;-><init>()V

    .line 5328
    iput p0, v0, Lokhttp3/az;->c:I

    .line 69
    sget-object v1, Lokhttp3/ap;->b:Lokhttp3/ap;

    .line 6323
    iput-object v1, v0, Lokhttp3/az;->b:Lokhttp3/ap;

    .line 70
    new-instance v1, Lokhttp3/at;

    invoke-direct {v1}, Lokhttp3/at;-><init>()V

    const-string v2, "http://localhost/"

    .line 71
    invoke-virtual {v1, v2}, Lokhttp3/at;->a(Ljava/lang/String;)Lokhttp3/at;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/at;->a()Lokhttp3/as;

    move-result-object v1

    .line 7318
    iput-object v1, v0, Lokhttp3/az;->a:Lokhttp3/as;

    .line 72
    invoke-virtual {v0}, Lokhttp3/az;->a()Lokhttp3/ay;

    move-result-object v0

    .line 68
    invoke-static {p1, v0}, Lretrofit2/Response;->error(Lokhttp3/ba;Lokhttp3/ay;)Lretrofit2/Response;

    move-result-object v0

    return-object v0
.end method

.method public static error(Lokhttp3/ba;Lokhttp3/ay;)Lretrofit2/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/ba;",
            "Lokhttp3/ay;",
            ")",
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "body == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rawResponse == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    invoke-virtual {p1}, Lokhttp3/ay;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawResponse should not be successful response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_2
    new-instance v0, Lretrofit2/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lretrofit2/Response;-><init>(Lokhttp3/ay;Ljava/lang/Object;Lokhttp3/ba;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;)Lretrofit2/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lokhttp3/az;

    invoke-direct {v0}, Lokhttp3/az;-><init>()V

    .line 1328
    const/16 v1, 0xc8

    iput v1, v0, Lokhttp3/az;->c:I

    .line 28
    const-string v1, "OK"

    .line 1333
    iput-object v1, v0, Lokhttp3/az;->d:Ljava/lang/String;

    .line 29
    sget-object v1, Lokhttp3/ap;->b:Lokhttp3/ap;

    .line 2323
    iput-object v1, v0, Lokhttp3/az;->b:Lokhttp3/ap;

    .line 30
    new-instance v1, Lokhttp3/at;

    invoke-direct {v1}, Lokhttp3/at;-><init>()V

    const-string v2, "http://localhost/"

    .line 31
    invoke-virtual {v1, v2}, Lokhttp3/at;->a(Ljava/lang/String;)Lokhttp3/at;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/at;->a()Lokhttp3/as;

    move-result-object v1

    .line 3318
    iput-object v1, v0, Lokhttp3/az;->a:Lokhttp3/as;

    .line 32
    invoke-virtual {v0}, Lokhttp3/az;->a()Lokhttp3/ay;

    move-result-object v0

    .line 27
    invoke-static {p0, v0}, Lretrofit2/Response;->success(Ljava/lang/Object;Lokhttp3/ay;)Lretrofit2/Response;

    move-result-object v0

    return-object v0
.end method

.method public static success(Ljava/lang/Object;Lokhttp3/ab;)Lretrofit2/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lokhttp3/ab;",
            ")",
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "headers == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    new-instance v0, Lokhttp3/az;

    invoke-direct {v0}, Lokhttp3/az;-><init>()V

    .line 3328
    const/16 v1, 0xc8

    iput v1, v0, Lokhttp3/az;->c:I

    .line 42
    const-string v1, "OK"

    .line 3333
    iput-object v1, v0, Lokhttp3/az;->d:Ljava/lang/String;

    .line 43
    sget-object v1, Lokhttp3/ap;->b:Lokhttp3/ap;

    .line 4323
    iput-object v1, v0, Lokhttp3/az;->b:Lokhttp3/ap;

    .line 45
    invoke-virtual {v0, p1}, Lokhttp3/az;->a(Lokhttp3/ab;)Lokhttp3/az;

    move-result-object v0

    new-instance v1, Lokhttp3/at;

    invoke-direct {v1}, Lokhttp3/at;-><init>()V

    const-string v2, "http://localhost/"

    .line 46
    invoke-virtual {v1, v2}, Lokhttp3/at;->a(Ljava/lang/String;)Lokhttp3/at;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/at;->a()Lokhttp3/as;

    move-result-object v1

    .line 5318
    iput-object v1, v0, Lokhttp3/az;->a:Lokhttp3/as;

    .line 47
    invoke-virtual {v0}, Lokhttp3/az;->a()Lokhttp3/ay;

    move-result-object v0

    .line 41
    invoke-static {p0, v0}, Lretrofit2/Response;->success(Ljava/lang/Object;Lokhttp3/ay;)Lretrofit2/Response;

    move-result-object v0

    return-object v0
.end method

.method public static success(Ljava/lang/Object;Lokhttp3/ay;)Lretrofit2/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lokhttp3/ay;",
            ")",
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rawResponse == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-virtual {p1}, Lokhttp3/ay;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawResponse must be successful response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    new-instance v0, Lretrofit2/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lretrofit2/Response;-><init>(Lokhttp3/ay;Ljava/lang/Object;Lokhttp3/ba;)V

    return-object v0
.end method


# virtual methods
.method public final body()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lretrofit2/Response;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public final code()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/ay;

    .line 8098
    iget v0, v0, Lokhttp3/ay;->b:I

    .line 102
    return v0
.end method

.method public final errorBody()Lokhttp3/ba;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lretrofit2/Response;->errorBody:Lokhttp3/ba;

    return-object v0
.end method

.method public final headers()Lokhttp3/ab;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/ay;

    .line 8136
    iget-object v0, v0, Lokhttp3/ay;->e:Lokhttp3/ab;

    .line 112
    return-object v0
.end method

.method public final isSuccessful()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/ay;

    invoke-virtual {v0}, Lokhttp3/ay;->a()Z

    move-result v0

    return v0
.end method

.method public final message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/ay;

    .line 8111
    iget-object v0, v0, Lokhttp3/ay;->c:Ljava/lang/String;

    .line 107
    return-object v0
.end method

.method public final raw()Lokhttp3/ay;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/ay;

    return-object v0
.end method
