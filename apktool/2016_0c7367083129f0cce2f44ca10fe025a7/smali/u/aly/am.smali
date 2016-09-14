.class public final Lu/aly/am;
.super Ljava/lang/Object;
.source "UMEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:J

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:J

.field public L:J

.field public M:J

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:J

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v2, p0, Lu/aly/am;->a:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lu/aly/am;->b:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lu/aly/am;->c:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lu/aly/am;->d:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lu/aly/am;->e:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lu/aly/am;->f:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lu/aly/am;->g:Ljava/lang/String;

    .line 52
    iput v1, p0, Lu/aly/am;->h:I

    .line 55
    sget-object v0, Lcom/umeng/analytics/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/am;->i:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/umeng/analytics/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/am;->j:Ljava/lang/String;

    .line 57
    const-string v0, "Android"

    iput-object v0, p0, Lu/aly/am;->k:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lu/aly/am;->l:Ljava/lang/String;

    .line 60
    iput v1, p0, Lu/aly/am;->m:I

    .line 65
    iput-object v2, p0, Lu/aly/am;->n:Ljava/lang/String;

    .line 66
    invoke-static {}, Lu/aly/cr;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/am;->o:Ljava/lang/String;

    .line 67
    const-string v0, "Android"

    iput-object v0, p0, Lu/aly/am;->p:Ljava/lang/String;

    .line 68
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/am;->q:Ljava/lang/String;

    .line 70
    iput-object v2, p0, Lu/aly/am;->r:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lu/aly/am;->s:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lu/aly/am;->t:Ljava/lang/String;

    .line 73
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/am;->u:Ljava/lang/String;

    .line 74
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/am;->v:Ljava/lang/String;

    .line 75
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/am;->w:Ljava/lang/String;

    .line 76
    sget-wide v0, Landroid/os/Build;->TIME:J

    iput-wide v0, p0, Lu/aly/am;->x:J

    .line 77
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/am;->y:Ljava/lang/String;

    .line 78
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/am;->z:Ljava/lang/String;

    .line 79
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/am;->A:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lu/aly/am;->B:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lu/aly/am;->C:Ljava/lang/String;

    .line 87
    const-wide/16 v0, 0x8

    iput-wide v0, p0, Lu/aly/am;->D:J

    .line 88
    iput-object v2, p0, Lu/aly/am;->E:Ljava/lang/String;

    .line 89
    iput-object v2, p0, Lu/aly/am;->F:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lu/aly/am;->G:Ljava/lang/String;

    .line 91
    iput-object v2, p0, Lu/aly/am;->H:Ljava/lang/String;

    .line 92
    iput-object v2, p0, Lu/aly/am;->I:Ljava/lang/String;

    .line 93
    iput-object v2, p0, Lu/aly/am;->J:Ljava/lang/String;

    .line 97
    iput-wide v4, p0, Lu/aly/am;->K:J

    .line 98
    iput-wide v4, p0, Lu/aly/am;->L:J

    .line 99
    iput-wide v4, p0, Lu/aly/am;->M:J

    .line 101
    iput-object v2, p0, Lu/aly/am;->N:Ljava/lang/String;

    .line 102
    iput-object v2, p0, Lu/aly/am;->O:Ljava/lang/String;

    return-void
.end method
