.class final Lcom/nut/blehunter/qrcode/b/c;
.super Lcom/nut/blehunter/qrcode/b/a;
.source "MECARDContactEncoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nut/blehunter/qrcode/b/a;-><init>()V

    .line 91
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    const-string v1, "MECARD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 47
    new-instance v6, Lcom/nut/blehunter/qrcode/b/d;

    const/4 v2, 0x0

    invoke-direct {v6, v2}, Lcom/nut/blehunter/qrcode/b/d;-><init>(B)V

    .line 49
    const-string v2, "N"

    const/4 v4, 0x1

    new-instance v5, Lcom/nut/blehunter/qrcode/b/e;

    const/4 v3, 0x0

    invoke-direct {v5, v3}, Lcom/nut/blehunter/qrcode/b/e;-><init>(B)V

    const/16 v7, 0x3b

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/nut/blehunter/qrcode/b/c;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/nut/blehunter/qrcode/b/b;Lcom/nut/blehunter/qrcode/b/b;C)V

    .line 52
    const-string v2, "ORG"

    const/16 v5, 0x3b

    move-object v3, p2

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Lcom/nut/blehunter/qrcode/b/c;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/qrcode/b/b;C)V

    .line 54
    const-string v2, "ADR"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v7, 0x3b

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lcom/nut/blehunter/qrcode/b/c;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/nut/blehunter/qrcode/b/b;Lcom/nut/blehunter/qrcode/b/b;C)V

    .line 56
    const-string v2, "TEL"

    const v4, 0x7fffffff

    new-instance v5, Lcom/nut/blehunter/qrcode/b/f;

    const/4 v3, 0x0

    invoke-direct {v5, v3}, Lcom/nut/blehunter/qrcode/b/f;-><init>(B)V

    const/16 v7, 0x3b

    move-object v3, p4

    invoke-static/range {v0 .. v7}, Lcom/nut/blehunter/qrcode/b/c;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/nut/blehunter/qrcode/b/b;Lcom/nut/blehunter/qrcode/b/b;C)V

    .line 59
    const-string v2, "EMAIL"

    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/16 v7, 0x3b

    move-object v3, p6

    invoke-static/range {v0 .. v7}, Lcom/nut/blehunter/qrcode/b/c;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/nut/blehunter/qrcode/b/b;Lcom/nut/blehunter/qrcode/b/b;C)V

    .line 62
    const-string v2, "URL"

    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/16 v7, 0x3b

    move-object v3, p7

    invoke-static/range {v0 .. v7}, Lcom/nut/blehunter/qrcode/b/c;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/nut/blehunter/qrcode/b/b;Lcom/nut/blehunter/qrcode/b/b;C)V

    .line 65
    const-string v2, "NOTE"

    const/16 v5, 0x3b

    move-object/from16 v3, p8

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Lcom/nut/blehunter/qrcode/b/c;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/qrcode/b/b;C)V

    .line 67
    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    return-object v2
.end method
