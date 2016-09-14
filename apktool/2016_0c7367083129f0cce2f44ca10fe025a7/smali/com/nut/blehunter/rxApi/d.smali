.class public final Lcom/nut/blehunter/rxApi/d;
.super Lcom/nut/blehunter/rxApi/i;
.source "ClientInterceptor.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/i;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/d;->a:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method protected final a(Lokhttp3/at;)V
    .locals 3

    .prologue
    .line 19
    const-string v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Basic "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nut/blehunter/rxApi/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/at;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;

    .line 20
    return-void
.end method
