.class public final Lorg/threeten/bp/format/b;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"


# static fields
.field public static final a:Lorg/threeten/bp/format/b;

.field public static final b:Lorg/threeten/bp/format/b;

.field public static final c:Lorg/threeten/bp/format/b;

.field public static final d:Lorg/threeten/bp/format/b;

.field public static final e:Lorg/threeten/bp/format/b;

.field public static final f:Lorg/threeten/bp/format/b;

.field public static final g:Lorg/threeten/bp/format/b;

.field public static final h:Lorg/threeten/bp/format/b;

.field public static final i:Lorg/threeten/bp/format/b;

.field public static final j:Lorg/threeten/bp/format/b;

.field public static final k:Lorg/threeten/bp/format/b;

.field public static final l:Lorg/threeten/bp/format/b;

.field public static final m:Lorg/threeten/bp/format/b;

.field public static final n:Lorg/threeten/bp/format/b;

.field public static final o:Lorg/threeten/bp/format/b;

.field private static final w:Lorg/threeten/bp/temporal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/z",
            "<",
            "Lorg/threeten/bp/z;",
            ">;"
        }
    .end annotation
.end field

.field private static final x:Lorg/threeten/bp/temporal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/z",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final p:Lorg/threeten/bp/format/k;

.field final q:Ljava/util/Locale;

.field final r:Lorg/threeten/bp/format/ab;

.field final s:Lorg/threeten/bp/format/ac;

.field final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/threeten/bp/temporal/q;",
            ">;"
        }
    .end annotation
.end field

.field final u:Lorg/threeten/bp/a/m;

.field final v:Lorg/threeten/bp/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x3a

    const/16 v4, 0x2d

    const/16 v7, 0x20

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 127
    new-instance v0, Lorg/threeten/bp/format/e;

    invoke-direct {v0}, Lorg/threeten/bp/format/e;-><init>()V

    sget-object v1, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    const/16 v2, 0xa

    sget-object v3, Lorg/threeten/bp/format/ad;->e:Lorg/threeten/bp/format/ad;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;IILorg/threeten/bp/format/ad;)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v1, v5}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->s:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v1, v5}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/b;->a(Lorg/threeten/bp/a/m;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/b;->a:Lorg/threeten/bp/format/b;

    .line 153
    new-instance v0, Lorg/threeten/bp/format/e;

    invoke-direct {v0}, Lorg/threeten/bp/format/e;-><init>()V

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->b()Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/b;->a:Lorg/threeten/bp/format/b;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->c()Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/b;->a(Lorg/threeten/bp/a/m;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/b;->b:Lorg/threeten/bp/format/b;

    .line 180
    new-instance v0, Lorg/threeten/bp/format/e;

    invoke-direct {v0}, Lorg/threeten/bp/format/e;-><init>()V

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->b()Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/b;->a:Lorg/threeten/bp/format/b;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->e()Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->c()Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/b;->a(Lorg/threeten/bp/a/m;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/b;->c:Lorg/threeten/bp/format/b;

    .line 214
    new-instance v0, Lorg/threeten/bp/format/e;

    invoke-direct {v0}, Lorg/threeten/bp/format/e;-><init>()V

    sget-object v1, Lorg/threeten/bp/temporal/a;->m:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v1, v5}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->i:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v1, v5}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->e()Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->g:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v1, v5}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->e()Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;II)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/b;->d:Lorg/threeten/bp/format/b;

    .line 243
    new-instance v0, Lorg/threeten/bp/format/e;

    invoke-direct {v0}, Lorg/threeten/bp/format/e;-><init>()V

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->b()Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/b;->d:Lorg/threeten/bp/format/b;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->c()Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/b;->e:Lorg/threeten/bp/format/b;

    .line 270
    new-instance v0, Lorg/threeten/bp/format/e;

    invoke-direct {v0}, Lorg/threeten/bp/format/e;-><init>()V

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->b()Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/b;->d:Lorg/threeten/bp/format/b;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->e()Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->c()Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/b;->f:Lorg/threeten/bp/format/b;

    .line 294
    new-instance v0, Lorg/threeten/bp/format/e;

    invoke-direct {v0}, Lorg/threeten/bp/format/e;-><init>()V

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->b()Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/b;->a:Lorg/threeten/bp/format/b;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/e;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/b;->d:Lorg/threeten/bp/format/b;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/b;->a(Lorg/threeten/bp/a/m;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/b;->g:Lorg/threeten/bp/format/b;

    .line 319
    new-instance v0, Lorg/threeten/bp/format/e;

    invoke-direct {v0}, Lorg/threeten/bp/format/e;-><init>()V

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->b()Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/b;->g:Lorg/threeten/bp/format/b;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->c()Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/b;->a(Lorg/threeten/bp/a/m;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/b;->h:Lorg/threeten/bp/format/b;

    .line 346
    new-instance v0, Lorg/threeten/bp/format/e;

    invoke-direct {v0}, Lorg/threeten/bp/format/e;-><init>()V

    sget-object v1, Lorg/threeten/bp/format/b;->h:Lorg/threeten/bp/format/b;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->e()Lorg/threeten/bp/format/e;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->a()Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->d()Lorg/threeten/bp/format/e;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/b;->a(Lorg/threeten/bp/a/m;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/b;->i:Lorg/threeten/bp/format/b;

    .line 381
    new-instance v0, Lorg/threeten/bp/format/e;

    invoke-direct {v0}, Lorg/threeten/bp/format/e;-><init>()V

    sget-object v1, Lorg/threeten/bp/format/b;->g:Lorg/threeten/bp/format/b;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->e()Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->c()Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->e()Lorg/threeten/bp/format/e;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->a()Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->d()Lorg/threeten/bp/format/e;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/b;->a(Lorg/threeten/bp/a/m;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/b;->j:Lorg/threeten/bp/format/b;

    .line 418
    new-instance v0, Lorg/threeten/bp/format/e;

    invoke-direct {v0}, Lorg/threeten/bp/format/e;-><init>()V

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->b()Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    const/16 v2, 0xa

    sget-object v3, Lorg/threeten/bp/format/ad;->e:Lorg/threeten/bp/format/ad;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;IILorg/threeten/bp/format/ad;)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->t:Lorg/threeten/bp/temporal/a;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->e()Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->c()Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/b;->a(Lorg/threeten/bp/a/m;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/b;->k:Lorg/threeten/bp/format/b;

    .line 457
    new-instance v0, Lorg/threeten/bp/format/e;

    invoke-direct {v0}, Lorg/threeten/bp/format/e;-><init>()V

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->b()Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/c;->d:Lorg/threeten/bp/temporal/q;

    const/16 v2, 0xa

    sget-object v3, Lorg/threeten/bp/format/ad;->e:Lorg/threeten/bp/format/ad;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;IILorg/threeten/bp/format/ad;)Lorg/threeten/bp/format/e;

    move-result-object v0

    const-string v1, "-W"

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Ljava/lang/String;)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/c;->c:Lorg/threeten/bp/temporal/q;

    invoke-virtual {v0, v1, v5}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->e()Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->c()Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/b;->a(Lorg/threeten/bp/a/m;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/b;->l:Lorg/threeten/bp/format/b;

    .line 503
    new-instance v0, Lorg/threeten/bp/format/e;

    invoke-direct {v0}, Lorg/threeten/bp/format/e;-><init>()V

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->b()Lorg/threeten/bp/format/e;

    move-result-object v0

    .line 7768
    new-instance v1, Lorg/threeten/bp/format/n;

    invoke-direct {v1}, Lorg/threeten/bp/format/n;-><init>()V

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/l;)I

    .line 503
    sget-object v1, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/b;->m:Lorg/threeten/bp/format/b;

    .line 534
    new-instance v0, Lorg/threeten/bp/format/e;

    invoke-direct {v0}, Lorg/threeten/bp/format/e;-><init>()V

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->b()Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v1, v6}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v1, v5}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->s:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v1, v5}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->e()Lorg/threeten/bp/format/e;

    move-result-object v0

    const-string v1, "+HHMMss"

    const-string v2, "Z"

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/format/e;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/b;->a(Lorg/threeten/bp/a/m;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/b;->n:Lorg/threeten/bp/format/b;

    .line 587
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 588
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Mon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Tue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Wed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Thu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Fri"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-wide/16 v2, 0x6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Sat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-wide/16 v2, 0x7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Sun"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 596
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Jan"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Feb"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Mar"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Apr"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "May"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-wide/16 v2, 0x6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Jun"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-wide/16 v2, 0x7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Jul"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Aug"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-wide/16 v2, 0x9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Sep"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Oct"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-wide/16 v2, 0xb

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Nov"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-wide/16 v2, 0xc

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Dec"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    new-instance v2, Lorg/threeten/bp/format/e;

    invoke-direct {v2}, Lorg/threeten/bp/format/e;-><init>()V

    invoke-virtual {v2}, Lorg/threeten/bp/format/e;->b()Lorg/threeten/bp/format/e;

    move-result-object v2

    .line 8290
    sget-object v3, Lorg/threeten/bp/format/r;->d:Lorg/threeten/bp/format/r;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/l;)I

    .line 608
    invoke-virtual {v2}, Lorg/threeten/bp/format/e;->e()Lorg/threeten/bp/format/e;

    move-result-object v2

    sget-object v3, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v2, v3, v0}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;Ljava/util/Map;)Lorg/threeten/bp/format/e;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Lorg/threeten/bp/format/e;->a(Ljava/lang/String;)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->f()Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/temporal/a;->s:Lorg/threeten/bp/temporal/a;

    const/4 v3, 0x1

    sget-object v4, Lorg/threeten/bp/format/ad;->d:Lorg/threeten/bp/format/ad;

    invoke-virtual {v0, v2, v3, v5, v4}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;IILorg/threeten/bp/format/ad;)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v2, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;Ljava/util/Map;)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v1, v6}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->m:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v1, v5}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->i:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v1, v5}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->e()Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->g:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v1, v5}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/e;->f()Lorg/threeten/bp/format/e;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v0

    const-string v1, "+HHMM"

    const-string v2, "GMT"

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/format/e;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/e;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/format/ac;->b:Lorg/threeten/bp/format/ac;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/b;->a(Lorg/threeten/bp/a/m;)Lorg/threeten/bp/format/b;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/b;->o:Lorg/threeten/bp/format/b;

    .line 934
    new-instance v0, Lorg/threeten/bp/format/c;

    invoke-direct {v0}, Lorg/threeten/bp/format/c;-><init>()V

    sput-object v0, Lorg/threeten/bp/format/b;->w:Lorg/threeten/bp/temporal/z;

    .line 977
    new-instance v0, Lorg/threeten/bp/format/d;

    invoke-direct {v0}, Lorg/threeten/bp/format/d;-><init>()V

    sput-object v0, Lorg/threeten/bp/format/b;->x:Lorg/threeten/bp/temporal/z;

    return-void
.end method

.method constructor <init>(Lorg/threeten/bp/format/k;Ljava/util/Locale;Lorg/threeten/bp/format/ab;Lorg/threeten/bp/format/ac;Ljava/util/Set;Lorg/threeten/bp/a/m;Lorg/threeten/bp/ad;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/format/k;",
            "Ljava/util/Locale;",
            "Lorg/threeten/bp/format/ab;",
            "Lorg/threeten/bp/format/ac;",
            "Ljava/util/Set",
            "<",
            "Lorg/threeten/bp/temporal/q;",
            ">;",
            "Lorg/threeten/bp/a/m;",
            "Lorg/threeten/bp/ad;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    const-string v0, "printerParser"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/k;

    iput-object v0, p0, Lorg/threeten/bp/format/b;->p:Lorg/threeten/bp/format/k;

    .line 1033
    const-string v0, "locale"

    invoke-static {p2, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lorg/threeten/bp/format/b;->q:Ljava/util/Locale;

    .line 1034
    const-string v0, "decimalStyle"

    invoke-static {p3, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/ab;

    iput-object v0, p0, Lorg/threeten/bp/format/b;->r:Lorg/threeten/bp/format/ab;

    .line 1035
    const-string v0, "resolverStyle"

    invoke-static {p4, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/ac;

    iput-object v0, p0, Lorg/threeten/bp/format/b;->s:Lorg/threeten/bp/format/ac;

    .line 1036
    iput-object p5, p0, Lorg/threeten/bp/format/b;->t:Ljava/util/Set;

    .line 1037
    iput-object p6, p0, Lorg/threeten/bp/format/b;->u:Lorg/threeten/bp/a/m;

    .line 1038
    iput-object p7, p0, Lorg/threeten/bp/format/b;->v:Lorg/threeten/bp/ad;

    .line 1039
    return-void
.end method

.method private a(Lorg/threeten/bp/a/m;)Lorg/threeten/bp/format/b;
    .locals 8

    .prologue
    .line 1136
    iget-object v0, p0, Lorg/threeten/bp/format/b;->u:Lorg/threeten/bp/a/m;

    invoke-static {v0, p1}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/threeten/bp/format/b;

    iget-object v1, p0, Lorg/threeten/bp/format/b;->p:Lorg/threeten/bp/format/k;

    iget-object v2, p0, Lorg/threeten/bp/format/b;->q:Ljava/util/Locale;

    iget-object v3, p0, Lorg/threeten/bp/format/b;->r:Lorg/threeten/bp/format/ab;

    iget-object v4, p0, Lorg/threeten/bp/format/b;->s:Lorg/threeten/bp/format/ac;

    iget-object v5, p0, Lorg/threeten/bp/format/b;->t:Ljava/util/Set;

    iget-object v7, p0, Lorg/threeten/bp/format/b;->v:Lorg/threeten/bp/ad;

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/threeten/bp/format/b;-><init>(Lorg/threeten/bp/format/k;Ljava/util/Locale;Lorg/threeten/bp/format/ab;Lorg/threeten/bp/format/ac;Ljava/util/Set;Lorg/threeten/bp/a/m;Lorg/threeten/bp/ad;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Lorg/threeten/bp/temporal/z",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x40

    .line 1488
    const-string v0, "text"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1489
    const-string v0, "type"

    invoke-static {p2, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2577
    :try_start_0
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2641
    const-string v0, "text"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2642
    const-string v0, "position"

    invoke-static {v2, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2643
    new-instance v0, Lorg/threeten/bp/format/w;

    invoke-direct {v0, p0}, Lorg/threeten/bp/format/w;-><init>(Lorg/threeten/bp/format/b;)V

    .line 2644
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 2645
    iget-object v3, p0, Lorg/threeten/bp/format/b;->p:Lorg/threeten/bp/format/k;

    invoke-virtual {v3, v0, p1, v1}, Lorg/threeten/bp/format/k;->a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2646
    if-gez v1, :cond_1

    .line 2647
    xor-int/lit8 v0, v1, -0x1

    invoke-virtual {v2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2648
    const/4 v0, 0x0

    move-object v1, v0

    .line 2579
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 2581
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 2582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v3, 0x40

    invoke-interface {p1, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2586
    :goto_1
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v1

    if-ltz v1, :cond_3

    .line 2587
    new-instance v1, Lorg/threeten/bp/format/DateTimeParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Text \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' could not be parsed at index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    invoke-direct {v1, v0, p1, v2}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1
    :try_end_0
    .catch Lorg/threeten/bp/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1494
    :catch_0
    move-exception v0

    throw v0

    .line 2650
    :cond_1
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 3407
    invoke-virtual {v0}, Lorg/threeten/bp/format/w;->b()Lorg/threeten/bp/format/x;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 2584
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2590
    :cond_3
    new-instance v1, Lorg/threeten/bp/format/DateTimeParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Text \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' could not be parsed, unparsed text found at index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-direct {v1, v0, p1, v2}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1
    :try_end_1
    .catch Lorg/threeten/bp/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1495
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 6554
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v5, :cond_7

    .line 6555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6559
    :goto_2
    new-instance v2, Lorg/threeten/bp/format/DateTimeParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Text \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' could not be parsed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1, v1}, Lorg/threeten/bp/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 1496
    throw v2

    .line 3491
    :cond_4
    :try_start_2
    new-instance v2, Lorg/threeten/bp/format/a;

    invoke-direct {v2}, Lorg/threeten/bp/format/a;-><init>()V

    .line 3492
    iget-object v0, v2, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    iget-object v3, v1, Lorg/threeten/bp/format/x;->c:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3493
    iget-object v3, v1, Lorg/threeten/bp/format/x;->f:Lorg/threeten/bp/format/w;

    .line 4170
    invoke-virtual {v3}, Lorg/threeten/bp/format/w;->b()Lorg/threeten/bp/format/x;

    move-result-object v0

    iget-object v0, v0, Lorg/threeten/bp/format/x;->a:Lorg/threeten/bp/a/m;

    .line 4171
    if-nez v0, :cond_5

    .line 4172
    iget-object v0, v3, Lorg/threeten/bp/format/w;->c:Lorg/threeten/bp/a/m;

    .line 4173
    if-nez v0, :cond_5

    .line 4174
    sget-object v0, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    .line 3493
    :cond_5
    iput-object v0, v2, Lorg/threeten/bp/format/a;->b:Lorg/threeten/bp/a/m;

    .line 3494
    iget-object v0, v1, Lorg/threeten/bp/format/x;->b:Lorg/threeten/bp/ad;

    if-eqz v0, :cond_6

    .line 3495
    iget-object v0, v1, Lorg/threeten/bp/format/x;->b:Lorg/threeten/bp/ad;

    iput-object v0, v2, Lorg/threeten/bp/format/a;->c:Lorg/threeten/bp/ad;

    .line 3499
    :goto_3
    iget-boolean v0, v1, Lorg/threeten/bp/format/x;->d:Z

    iput-boolean v0, v2, Lorg/threeten/bp/format/a;->f:Z

    .line 3500
    iget-object v0, v1, Lorg/threeten/bp/format/x;->e:Lorg/threeten/bp/z;

    iput-object v0, v2, Lorg/threeten/bp/format/a;->g:Lorg/threeten/bp/z;

    .line 1491
    iget-object v0, p0, Lorg/threeten/bp/format/b;->s:Lorg/threeten/bp/format/ac;

    iget-object v1, p0, Lorg/threeten/bp/format/b;->t:Ljava/util/Set;

    invoke-virtual {v2, v0, v1}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/format/ac;Ljava/util/Set;)Lorg/threeten/bp/format/a;

    move-result-object v0

    .line 5644
    invoke-interface {p2, v0}, Lorg/threeten/bp/temporal/z;->a(Lorg/threeten/bp/temporal/l;)Ljava/lang/Object;

    move-result-object v0

    .line 1492
    return-object v0

    .line 3497
    :cond_6
    iget-object v0, v1, Lorg/threeten/bp/format/x;->f:Lorg/threeten/bp/format/w;

    .line 5067
    iget-object v0, v0, Lorg/threeten/bp/format/w;->d:Lorg/threeten/bp/ad;

    .line 3497
    iput-object v0, v2, Lorg/threeten/bp/format/a;->c:Lorg/threeten/bp/ad;
    :try_end_2
    .catch Lorg/threeten/bp/format/DateTimeParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 6557
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public final a(Lorg/threeten/bp/temporal/l;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1358
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2380
    const-string v1, "temporal"

    invoke-static {p1, v1}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2381
    const-string v1, "appendable"

    invoke-static {v2, v1}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2383
    :try_start_0
    new-instance v3, Lorg/threeten/bp/format/y;

    invoke-direct {v3, p1, p0}, Lorg/threeten/bp/format/y;-><init>(Lorg/threeten/bp/temporal/l;Lorg/threeten/bp/format/b;)V

    .line 2385
    iget-object v4, p0, Lorg/threeten/bp/format/b;->p:Lorg/threeten/bp/format/k;

    move-object v0, v2

    check-cast v0, Ljava/lang/StringBuilder;

    move-object v1, v0

    invoke-virtual {v4, v3, v1}, Lorg/threeten/bp/format/k;->a(Lorg/threeten/bp/format/y;Ljava/lang/StringBuilder;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1360
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2392
    :catch_0
    move-exception v1

    .line 2393
    new-instance v2, Lorg/threeten/bp/DateTimeException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method final a()Lorg/threeten/bp/format/k;
    .locals 3

    .prologue
    .line 1662
    iget-object v0, p0, Lorg/threeten/bp/format/b;->p:Lorg/threeten/bp/format/k;

    .line 6981
    iget-boolean v1, v0, Lorg/threeten/bp/format/k;->b:Z

    if-nez v1, :cond_0

    .line 6982
    :goto_0
    return-object v0

    .line 6984
    :cond_0
    new-instance v1, Lorg/threeten/bp/format/k;

    iget-object v0, v0, Lorg/threeten/bp/format/k;->a:[Lorg/threeten/bp/format/l;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/threeten/bp/format/k;-><init>([Lorg/threeten/bp/format/l;Z)V

    move-object v0, v1

    .line 1662
    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1711
    iget-object v0, p0, Lorg/threeten/bp/format/b;->p:Lorg/threeten/bp/format/k;

    invoke-virtual {v0}, Lorg/threeten/bp/format/k;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1712
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
