.class public final Lcom/google/zxing/b/a/d;
.super Lcom/google/zxing/b/a/q;
.source "AddressBookParsedResult.java"


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:[Ljava/lang/String;

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:[Ljava/lang/String;

.field private final g:[Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:[Ljava/lang/String;

.field private final j:[Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:[Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 82
    sget v1, Lcom/google/zxing/b/a/r;->a:I

    invoke-direct {p0, v1}, Lcom/google/zxing/b/a/q;-><init>(I)V

    .line 83
    iput-object p1, p0, Lcom/google/zxing/b/a/d;->a:[Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/google/zxing/b/a/d;->g:[Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/google/zxing/b/a/d;->h:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/google/zxing/b/a/d;->b:[Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lcom/google/zxing/b/a/d;->i:[Ljava/lang/String;

    .line 88
    iput-object p6, p0, Lcom/google/zxing/b/a/d;->c:[Ljava/lang/String;

    .line 89
    iput-object p7, p0, Lcom/google/zxing/b/a/d;->j:[Ljava/lang/String;

    .line 90
    iput-object p8, p0, Lcom/google/zxing/b/a/d;->k:Ljava/lang/String;

    .line 91
    iput-object p9, p0, Lcom/google/zxing/b/a/d;->l:Ljava/lang/String;

    .line 92
    iput-object p10, p0, Lcom/google/zxing/b/a/d;->d:[Ljava/lang/String;

    .line 93
    iput-object p11, p0, Lcom/google/zxing/b/a/d;->m:[Ljava/lang/String;

    .line 94
    iput-object p12, p0, Lcom/google/zxing/b/a/d;->e:Ljava/lang/String;

    .line 95
    iput-object p13, p0, Lcom/google/zxing/b/a/d;->n:Ljava/lang/String;

    .line 96
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/zxing/b/a/d;->o:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/zxing/b/a/d;->f:[Ljava/lang/String;

    .line 98
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/zxing/b/a/d;->p:[Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 192
    iget-object v1, p0, Lcom/google/zxing/b/a/d;->a:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/d;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 193
    iget-object v1, p0, Lcom/google/zxing/b/a/d;->g:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/d;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 194
    iget-object v1, p0, Lcom/google/zxing/b/a/d;->h:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 195
    iget-object v1, p0, Lcom/google/zxing/b/a/d;->o:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 196
    iget-object v1, p0, Lcom/google/zxing/b/a/d;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 197
    iget-object v1, p0, Lcom/google/zxing/b/a/d;->d:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/d;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 198
    iget-object v1, p0, Lcom/google/zxing/b/a/d;->b:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/d;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 199
    iget-object v1, p0, Lcom/google/zxing/b/a/d;->c:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/d;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 200
    iget-object v1, p0, Lcom/google/zxing/b/a/d;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 201
    iget-object v1, p0, Lcom/google/zxing/b/a/d;->f:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/d;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 202
    iget-object v1, p0, Lcom/google/zxing/b/a/d;->n:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 203
    iget-object v1, p0, Lcom/google/zxing/b/a/d;->p:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/d;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 204
    iget-object v1, p0, Lcom/google/zxing/b/a/d;->l:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/b/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
