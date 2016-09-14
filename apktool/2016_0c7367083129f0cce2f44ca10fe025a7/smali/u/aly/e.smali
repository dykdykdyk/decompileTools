.class public final Lu/aly/e;
.super Ljava/lang/Object;
.source "CacheImpl.java"

# interfaces
.implements Lu/aly/n;
.implements Lu/aly/t;


# static fields
.field static f:Landroid/content/Context;


# instance fields
.field a:Lu/aly/x;

.field b:Lu/aly/aq;

.field c:Lu/aly/ap;

.field d:Lu/aly/ar;

.field e:Lu/aly/fk;

.field private final g:J

.field private final h:I

.field private i:Lu/aly/q;

.field private j:Lcom/umeng/analytics/aa;

.field private k:Lu/aly/g;

.field private l:I

.field private m:J

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/32 v0, 0x1b77400

    iput-wide v0, p0, Lu/aly/e;->g:J

    .line 43
    const/16 v0, 0x1388

    iput v0, p0, Lu/aly/e;->h:I

    .line 44
    iput-object v2, p0, Lu/aly/e;->i:Lu/aly/q;

    .line 45
    iput-object v2, p0, Lu/aly/e;->j:Lcom/umeng/analytics/aa;

    .line 46
    iput-object v2, p0, Lu/aly/e;->a:Lu/aly/x;

    .line 47
    iput-object v2, p0, Lu/aly/e;->b:Lu/aly/aq;

    .line 48
    iput-object v2, p0, Lu/aly/e;->c:Lu/aly/ap;

    .line 49
    iput-object v2, p0, Lu/aly/e;->d:Lu/aly/ar;

    .line 50
    iput-object v2, p0, Lu/aly/e;->k:Lu/aly/g;

    .line 51
    iput-object v2, p0, Lu/aly/e;->e:Lu/aly/fk;

    .line 53
    const/16 v0, 0xa

    iput v0, p0, Lu/aly/e;->l:I

    .line 55
    iput-wide v6, p0, Lu/aly/e;->m:J

    .line 56
    iput v4, p0, Lu/aly/e;->n:I

    .line 57
    iput v4, p0, Lu/aly/e;->o:I

    .line 62
    sput-object p1, Lu/aly/e;->f:Landroid/content/Context;

    .line 64
    new-instance v0, Lu/aly/q;

    invoke-direct {v0, p1}, Lu/aly/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/e;->i:Lu/aly/q;

    .line 65
    new-instance v0, Lu/aly/x;

    invoke-direct {v0, p1}, Lu/aly/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/e;->a:Lu/aly/x;

    .line 67
    invoke-static {p1}, Lcom/umeng/analytics/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/aa;

    move-result-object v0

    iput-object v0, p0, Lu/aly/e;->j:Lcom/umeng/analytics/aa;

    .line 68
    invoke-static {p1}, Lu/aly/fj;->a(Landroid/content/Context;)Lu/aly/fj;

    move-result-object v0

    .line 1212
    iget-object v0, v0, Lu/aly/fj;->b:Lu/aly/fk;

    .line 68
    iput-object v0, p0, Lu/aly/e;->e:Lu/aly/fk;

    .line 70
    new-instance v0, Lu/aly/g;

    invoke-direct {v0, p0}, Lu/aly/g;-><init>(Lu/aly/e;)V

    iput-object v0, p0, Lu/aly/e;->k:Lu/aly/g;

    .line 72
    sget-object v0, Lu/aly/e;->f:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ap;->a(Landroid/content/Context;)Lu/aly/ap;

    move-result-object v0

    iput-object v0, p0, Lu/aly/e;->c:Lu/aly/ap;

    .line 73
    sget-object v0, Lu/aly/e;->f:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/aq;->a(Landroid/content/Context;)Lu/aly/aq;

    move-result-object v0

    iput-object v0, p0, Lu/aly/e;->b:Lu/aly/aq;

    .line 74
    sget-object v0, Lu/aly/e;->f:Landroid/content/Context;

    iget-object v1, p0, Lu/aly/e;->a:Lu/aly/x;

    invoke-static {v0, v1}, Lu/aly/ar;->a(Landroid/content/Context;Lu/aly/x;)Lu/aly/ar;

    move-result-object v0

    iput-object v0, p0, Lu/aly/e;->d:Lu/aly/ar;

    .line 77
    sget-object v0, Lu/aly/e;->f:Landroid/content/Context;

    .line 2024
    const-string v1, "umeng_general_config"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    const-string v1, "thtstart"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lu/aly/e;->m:J

    .line 79
    const-string v1, "gkvc"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/e;->n:I

    .line 80
    const-string v1, "ekvc"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lu/aly/e;->o:I

    .line 81
    return-void
.end method

.method private varargs a([I)Lu/aly/z;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 202
    :try_start_0
    sget-object v0, Lu/aly/e;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "Appkey is missing ,Please check AndroidManifest.xml"

    invoke-static {v0}, Lu/aly/ct;->d(Ljava/lang/String;)V

    move-object v0, v3

    .line 245
    :goto_0
    return-object v0

    .line 207
    :cond_0
    sget-object v0, Lu/aly/e;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/aa;

    invoke-static {}, Lcom/umeng/analytics/aa;->d()Lu/aly/z;

    move-result-object v4

    .line 209
    if-nez v4, :cond_1

    iget-object v0, p0, Lu/aly/e;->i:Lu/aly/q;

    invoke-virtual {v0}, Lu/aly/q;->a()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v3

    .line 210
    goto :goto_0

    .line 213
    :cond_1
    if-nez v4, :cond_2

    .line 214
    new-instance v4, Lu/aly/z;

    invoke-direct {v4}, Lu/aly/z;-><init>()V

    .line 216
    :cond_2
    iget-object v0, p0, Lu/aly/e;->i:Lu/aly/q;

    .line 23068
    iget-object v5, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/w;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 23069
    if-eqz v5, :cond_7

    .line 23133
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    iget-object v6, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/analytics/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lu/aly/am;->a:Ljava/lang/String;

    .line 23134
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    iget-object v6, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/analytics/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lu/aly/am;->b:Ljava/lang/String;

    .line 23135
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    iget-object v6, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/analytics/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lu/aly/cs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lu/aly/am;->c:Ljava/lang/String;

    .line 23136
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    iget-object v6, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/analytics/a;->d(Landroid/content/Context;)I

    move-result v6

    iput v6, v5, Lu/aly/am;->m:I

    .line 23137
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    invoke-static {}, Lcom/umeng/analytics/a;->b()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lu/aly/am;->l:Ljava/lang/String;

    .line 23138
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    iget-object v6, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/cr;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lu/aly/am;->e:Ljava/lang/String;

    .line 23140
    iget-object v5, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/cr;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 23141
    iget-object v6, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/cr;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 23142
    iget-object v7, v0, Lu/aly/q;->a:Landroid/content/Context;

    .line 24024
    const-string v8, "umeng_general_config"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 23143
    if-nez v7, :cond_8

    .line 23144
    iget-object v7, v4, Lu/aly/z;->a:Lu/aly/am;

    iput v5, v7, Lu/aly/am;->h:I

    .line 23145
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    iput-object v6, v5, Lu/aly/am;->d:Ljava/lang/String;

    .line 23151
    :goto_1
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    iget-object v6, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/cr;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lu/aly/am;->f:Ljava/lang/String;

    .line 23152
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    iget-object v6, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/cr;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lu/aly/am;->g:Ljava/lang/String;

    .line 23154
    sget-object v5, Lcom/umeng/analytics/a;->a:Ljava/lang/String;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/umeng/analytics/a;->b:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 23155
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    sget-object v6, Lcom/umeng/analytics/a;->a:Ljava/lang/String;

    iput-object v6, v5, Lu/aly/am;->i:Ljava/lang/String;

    .line 23156
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    sget-object v6, Lcom/umeng/analytics/a;->b:Ljava/lang/String;

    iput-object v6, v5, Lu/aly/am;->j:Ljava/lang/String;

    .line 23162
    :cond_3
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    iget-object v6, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/cr;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lu/aly/am;->t:Ljava/lang/String;

    .line 23163
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    iget-object v6, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/cr;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lu/aly/am;->n:Ljava/lang/String;

    .line 23164
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    iget-object v6, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/cr;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lu/aly/am;->s:Ljava/lang/String;

    .line 23166
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    invoke-static {}, Lu/aly/cr;->b()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lu/aly/am;->B:Ljava/lang/String;

    .line 23167
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    invoke-static {}, Lu/aly/cr;->c()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lu/aly/am;->C:Ljava/lang/String;

    .line 23170
    iget-object v5, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/cr;->o(Landroid/content/Context;)[I

    move-result-object v5

    .line 23171
    if-eqz v5, :cond_4

    .line 23172
    iget-object v6, v4, Lu/aly/z;->a:Lu/aly/am;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v5, v5, v8

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lu/aly/am;->r:Ljava/lang/String;

    .line 23182
    :cond_4
    iget-object v5, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/cr;->g(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    .line 23184
    const-string v6, "Wi-Fi"

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 23185
    iget-object v6, v4, Lu/aly/z;->a:Lu/aly/am;

    const-string v7, "wifi"

    iput-object v7, v6, Lu/aly/am;->H:Ljava/lang/String;

    .line 23192
    :goto_2
    const-string v6, ""

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 23193
    iget-object v6, v4, Lu/aly/z;->a:Lu/aly/am;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iput-object v5, v6, Lu/aly/am;->I:Ljava/lang/String;

    .line 23195
    :cond_5
    iget-object v5, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/cr;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 23196
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 23197
    iget-object v6, v4, Lu/aly/z;->a:Lu/aly/am;

    iput-object v5, v6, Lu/aly/am;->J:Ljava/lang/String;

    .line 23199
    :cond_6
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    iget-object v6, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/cr;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lu/aly/am;->G:Ljava/lang/String;

    .line 23200
    iget-object v5, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/cr;->l(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    .line 23201
    iget-object v6, v4, Lu/aly/z;->a:Lu/aly/am;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    iput-object v7, v6, Lu/aly/am;->F:Ljava/lang/String;

    .line 23202
    iget-object v6, v4, Lu/aly/z;->a:Lu/aly/am;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iput-object v5, v6, Lu/aly/am;->E:Ljava/lang/String;

    .line 23203
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    iget-object v6, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/cr;->j(Landroid/content/Context;)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v5, Lu/aly/am;->D:J

    .line 23208
    iget-object v5, v0, Lu/aly/q;->a:Landroid/content/Context;

    .line 25024
    const-string v6, "umeng_general_config"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 24119
    iget-object v6, v4, Lu/aly/z;->a:Lu/aly/am;

    const-string v7, "failed_requests "

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    int-to-long v8, v7

    iput-wide v8, v6, Lu/aly/am;->L:J

    .line 24120
    iget-object v6, v4, Lu/aly/z;->a:Lu/aly/am;

    const-string v7, "successful_request"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    int-to-long v8, v7

    iput-wide v8, v6, Lu/aly/am;->K:J

    .line 24121
    iget-object v6, v4, Lu/aly/z;->a:Lu/aly/am;

    const-string v7, "last_request_spent_ms"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    int-to-long v8, v5

    iput-wide v8, v6, Lu/aly/am;->M:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23215
    :try_start_1
    iget-object v5, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/fg;->a(Landroid/content/Context;)Lu/aly/fg;

    move-result-object v5

    .line 25114
    iget-object v5, v5, Lu/aly/fg;->a:Lu/aly/bf;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 23216
    if-nez v5, :cond_b

    .line 23073
    :goto_3
    :try_start_2
    invoke-virtual {v0, v4}, Lu/aly/q;->a(Lu/aly/z;)V

    .line 218
    :cond_7
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->c:Ljava/util/List;

    if-eqz v0, :cond_e

    sget-boolean v0, Lu/aly/ct;->a:Z

    if-eqz v0, :cond_e

    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 220
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/an;

    .line 221
    iget-object v0, v0, Lu/aly/an;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    move v0, v1

    :goto_5
    move v2, v0

    .line 224
    goto :goto_4

    .line 23147
    :cond_8
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    const-string v6, "versioncode"

    const/4 v8, 0x0

    invoke-interface {v7, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lu/aly/am;->h:I

    .line 23148
    iget-object v5, v4, Lu/aly/z;->a:Lu/aly/am;

    const-string v6, "versionname"

    const-string v8, ""

    invoke-interface {v7, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lu/aly/am;->d:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    const-string v1, "Fail to construct message ..."

    invoke-static {v1, v0}, Lu/aly/ct;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    sget-object v1, Lu/aly/e;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/aa;->e()V

    .line 242
    invoke-static {v0}, Lu/aly/ct;->a(Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 245
    goto/16 :goto_0

    .line 23186
    :cond_9
    :try_start_3
    const-string v6, "2G/3G"

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 23187
    iget-object v6, v4, Lu/aly/z;->a:Lu/aly/am;

    const-string v7, "2G/3G"

    iput-object v7, v6, Lu/aly/am;->H:Ljava/lang/String;

    goto/16 :goto_2

    .line 23189
    :cond_a
    iget-object v6, v4, Lu/aly/z;->a:Lu/aly/am;

    const-string v7, "unknow"

    iput-object v7, v6, Lu/aly/am;->H:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 23220
    :cond_b
    :try_start_4
    new-instance v6, Lu/aly/da;

    invoke-direct {v6}, Lu/aly/da;-><init>()V

    invoke-virtual {v6, v5}, Lu/aly/da;->a(Lu/aly/cw;)[B

    move-result-object v5

    .line 23221
    iget-object v6, v4, Lu/aly/z;->a:Lu/aly/am;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lu/aly/am;->O:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 23229
    :goto_6
    :try_start_5
    iget-object v5, v0, Lu/aly/q;->a:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/fj;->a(Landroid/content/Context;)Lu/aly/fj;

    move-result-object v5

    invoke-virtual {v5}, Lu/aly/fj;->a()Lu/aly/bl;

    move-result-object v5

    .line 23230
    if-nez v5, :cond_c

    .line 23231
    const-string v5, "trans the imprint is null"

    invoke-static {v5}, Lu/aly/ct;->d(Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_1
    move-exception v5

    goto/16 :goto_3

    .line 23234
    :cond_c
    new-instance v6, Lu/aly/da;

    invoke-direct {v6}, Lu/aly/da;-><init>()V

    invoke-virtual {v6, v5}, Lu/aly/da;->a(Lu/aly/cw;)[B

    move-result-object v5

    .line 23235
    iget-object v6, v4, Lu/aly/z;->a:Lu/aly/am;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lu/aly/am;->N:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    .line 226
    :cond_d
    if-nez v2, :cond_e

    .line 227
    :try_start_6
    const-string v0, "missing Activities or PageViews"

    invoke-static {v0}, Lu/aly/ct;->c(Ljava/lang/String;)V

    .line 231
    :cond_e
    iget-object v0, p0, Lu/aly/e;->b:Lu/aly/aq;

    sget-object v2, Lu/aly/e;->f:Landroid/content/Context;

    .line 26052
    iget v5, v0, Lu/aly/aq;->a:I

    if-ne v5, v1, :cond_11

    .line 26053
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    const/4 v1, 0x0

    iput-object v1, v0, Lu/aly/al;->i:Ljava/util/List;

    .line 26054
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    const/4 v1, 0x0

    iput-object v1, v0, Lu/aly/al;->a:Ljava/util/List;

    .line 26055
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    const/4 v1, 0x0

    iput-object v1, v0, Lu/aly/al;->b:Ljava/util/List;

    .line 26056
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    const/4 v1, 0x0

    iput-object v1, v0, Lu/aly/al;->h:Lu/aly/ac;

    .line 233
    :cond_f
    :goto_7
    array-length v0, p1

    if-ne v0, v10, :cond_10

    .line 234
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->e:Lu/aly/af;

    const/4 v1, 0x0

    aget v1, p1, v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lu/aly/af;->a:Ljava/lang/Integer;

    .line 235
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->e:Lu/aly/af;

    const/4 v1, 0x1

    aget v1, p1, v1

    int-to-long v6, v1

    iput-wide v6, v0, Lu/aly/af;->b:J

    .line 236
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->e:Lu/aly/af;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lu/aly/af;->c:Z

    :cond_10
    move-object v0, v4

    .line 238
    goto/16 :goto_0

    .line 26057
    :cond_11
    iget v1, v0, Lu/aly/aq;->a:I

    if-ne v1, v10, :cond_12

    .line 26058
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26059
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->c:Ljava/util/List;

    invoke-static {v2}, Lu/aly/aq;->b(Landroid/content/Context;)Lu/aly/an;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26060
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    const/4 v1, 0x0

    iput-object v1, v0, Lu/aly/al;->i:Ljava/util/List;

    .line 26061
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    const/4 v1, 0x0

    iput-object v1, v0, Lu/aly/al;->a:Ljava/util/List;

    .line 26062
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    const/4 v1, 0x0

    iput-object v1, v0, Lu/aly/al;->b:Ljava/util/List;

    .line 26063
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    const/4 v1, 0x0

    iput-object v1, v0, Lu/aly/al;->h:Lu/aly/ac;

    goto :goto_7

    .line 26064
    :cond_12
    iget v0, v0, Lu/aly/aq;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    .line 26065
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    const/4 v1, 0x0

    iput-object v1, v0, Lu/aly/al;->c:Ljava/util/List;

    .line 26066
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    const/4 v1, 0x0

    iput-object v1, v0, Lu/aly/al;->i:Ljava/util/List;

    .line 26067
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    const/4 v1, 0x0

    iput-object v1, v0, Lu/aly/al;->a:Ljava/util/List;

    .line 26068
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    const/4 v1, 0x0

    iput-object v1, v0, Lu/aly/al;->b:Ljava/util/List;

    .line 26069
    iget-object v0, v4, Lu/aly/z;->b:Lu/aly/al;

    const/4 v1, 0x0

    iput-object v1, v0, Lu/aly/al;->h:Lu/aly/ac;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_7

    :catch_2
    move-exception v5

    goto/16 :goto_6

    :cond_13
    move v0, v2

    goto/16 :goto_5
.end method

.method private static a(IILu/aly/z;)V
    .locals 3

    .prologue
    .line 367
    if-lez p0, :cond_1

    .line 368
    iget-object v0, p2, Lu/aly/z;->b:Lu/aly/al;

    iget-object v1, v0, Lu/aly/al;->b:Ljava/util/List;

    .line 369
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p0, :cond_0

    .line 370
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int v2, v0, p0

    .line 371
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, v2, :cond_1

    .line 372
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 371
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 375
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 376
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 380
    :cond_1
    if-lez p1, :cond_3

    .line 381
    iget-object v0, p2, Lu/aly/z;->b:Lu/aly/al;

    iget-object v1, v0, Lu/aly/al;->a:Ljava/util/List;

    .line 382
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_2

    .line 383
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int v2, v0, p1

    .line 384
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lt v0, v2, :cond_3

    .line 385
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 384
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 388
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 389
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 393
    :cond_3
    return-void
.end method

.method private a(Lu/aly/z;)V
    .locals 4

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 166
    :try_start_0
    sget-object v0, Lu/aly/e;->f:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/fg;->a(Landroid/content/Context;)Lu/aly/fg;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lu/aly/fg;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22114
    :try_start_1
    iget-object v0, v1, Lu/aly/fg;->a:Lu/aly/bf;

    .line 170
    new-instance v2, Lu/aly/da;

    invoke-direct {v2}, Lu/aly/da;-><init>()V

    invoke-virtual {v2, v0}, Lu/aly/da;->a(Lu/aly/cw;)[B

    move-result-object v0

    .line 171
    iget-object v2, p1, Lu/aly/z;->a:Lu/aly/am;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lu/aly/am;->O:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :goto_0
    :try_start_2
    sget-object v0, Lu/aly/e;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/aa;

    move-result-object v0

    invoke-direct {p0, p1}, Lu/aly/e;->b(Lu/aly/z;)Lu/aly/z;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/aa;->a(Lu/aly/z;)[B

    move-result-object v0

    .line 175
    if-nez v0, :cond_1

    .line 198
    :cond_0
    :goto_1
    return-void

    .line 177
    :cond_1
    sget-object v2, Lu/aly/e;->f:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/umeng/analytics/r;->a(Landroid/content/Context;[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    invoke-direct {p0}, Lu/aly/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    sget-object v2, Lu/aly/e;->f:Landroid/content/Context;

    sget-object v3, Lu/aly/e;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lu/aly/fe;->b(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/fe;

    move-result-object v0

    .line 186
    :goto_2
    invoke-virtual {v0}, Lu/aly/fe;->a()[B

    move-result-object v0

    .line 187
    sget-object v2, Lu/aly/e;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/aa;

    move-result-object v2

    .line 188
    invoke-virtual {v2}, Lcom/umeng/analytics/aa;->e()V

    .line 189
    invoke-virtual {v2, v0}, Lcom/umeng/analytics/aa;->a([B)V

    .line 190
    invoke-virtual {v1}, Lu/aly/fg;->b()V

    .line 191
    const-wide/16 v0, 0x0

    sput-wide v0, Lu/aly/z;->c:J

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 184
    :cond_2
    sget-object v2, Lu/aly/e;->f:Landroid/content/Context;

    sget-object v3, Lu/aly/e;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lu/aly/fe;->a(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/fe;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private b(Lu/aly/z;)Lu/aly/z;
    .locals 10

    .prologue
    const/16 v4, 0x1388

    const/4 v2, 0x0

    .line 327
    .line 328
    iget-object v0, p1, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    move v1, v2

    move v3, v2

    .line 329
    :goto_0
    iget-object v0, p1, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 330
    iget-object v0, p1, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ag;

    iget-object v0, v0, Lu/aly/ag;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 329
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 333
    :cond_1
    iget-object v0, p1, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    move v1, v2

    .line 334
    :goto_1
    iget-object v0, p1, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 335
    iget-object v0, p1, Lu/aly/z;->b:Lu/aly/al;

    iget-object v0, v0, Lu/aly/al;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ag;

    iget-object v0, v0, Lu/aly/ag;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 334
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 339
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 340
    iget-wide v6, p0, Lu/aly/e;->m:J

    sub-long v6, v0, v6

    const-wide/32 v8, 0x1b77400

    cmp-long v5, v6, v8

    if-lez v5, :cond_5

    .line 342
    add-int/lit16 v5, v3, -0x1388

    .line 344
    if-lez v5, :cond_3

    .line 345
    const/16 v6, -0x1388

    invoke-static {v6, v5, p1}, Lu/aly/e;->a(IILu/aly/z;)V

    .line 348
    :cond_3
    iput v2, p0, Lu/aly/e;->n:I

    .line 349
    if-lez v5, :cond_4

    move v3, v4

    :cond_4
    iput v3, p0, Lu/aly/e;->o:I

    .line 350
    iput-wide v0, p0, Lu/aly/e;->m:J

    .line 363
    :goto_2
    return-object p1

    .line 352
    :cond_5
    iget v0, p0, Lu/aly/e;->n:I

    if-le v0, v4, :cond_8

    .line 353
    :goto_3
    iget v0, p0, Lu/aly/e;->o:I

    if-le v0, v4, :cond_9

    move v1, v3

    .line 355
    :goto_4
    if-gtz v2, :cond_6

    if-lez v1, :cond_7

    .line 356
    :cond_6
    invoke-static {v2, v1, p1}, Lu/aly/e;->a(IILu/aly/z;)V

    .line 359
    :cond_7
    if-lez v2, :cond_a

    move v0, v4

    :goto_5
    iput v0, p0, Lu/aly/e;->n:I

    .line 360
    if-lez v1, :cond_b

    :goto_6
    iput v4, p0, Lu/aly/e;->o:I

    goto :goto_2

    .line 352
    :cond_8
    iget v0, p0, Lu/aly/e;->n:I

    add-int/lit8 v0, v0, 0x0

    add-int/lit16 v2, v0, -0x1388

    goto :goto_3

    .line 353
    :cond_9
    iget v0, p0, Lu/aly/e;->o:I

    add-int/2addr v0, v3

    add-int/lit16 v0, v0, -0x1388

    move v1, v0

    goto :goto_4

    .line 359
    :cond_a
    iget v0, p0, Lu/aly/e;->n:I

    add-int/lit8 v0, v0, 0x0

    goto :goto_5

    .line 360
    :cond_b
    iget v0, p0, Lu/aly/e;->o:I

    add-int v4, v0, v3

    goto :goto_6
.end method

.method private d()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 396
    iget-object v3, p0, Lu/aly/e;->e:Lu/aly/fk;

    .line 28388
    iget v4, v3, Lu/aly/fk;->b:I

    if-eqz v4, :cond_0

    iget v4, v3, Lu/aly/fk;->b:I

    if-eq v4, v0, :cond_0

    iget v4, v3, Lu/aly/fk;->b:I

    if-ne v4, v2, :cond_1

    .line 28389
    :cond_0
    iget v2, v3, Lu/aly/fk;->b:I

    .line 396
    :cond_1
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 404
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 400
    goto :goto_0

    .line 402
    :pswitch_2
    sget-boolean v0, Lcom/umeng/analytics/a;->j:Z

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 109
    iget-object v0, p0, Lu/aly/e;->i:Lu/aly/q;

    invoke-virtual {v0}, Lu/aly/q;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [I

    invoke-direct {p0, v0}, Lu/aly/e;->a([I)Lu/aly/z;

    move-result-object v0

    .line 21227
    invoke-static {}, Lcom/umeng/analytics/aa;->h()Ljava/lang/String;

    move-result-object v1

    .line 21228
    new-instance v4, Ljava/io/File;

    sget-object v3, Lcom/umeng/analytics/aa;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 21232
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21233
    :try_start_2
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21234
    :try_start_3
    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 21235
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 21242
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 21249
    :goto_0
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 124
    :cond_0
    :goto_1
    sget-object v0, Lu/aly/e;->f:Landroid/content/Context;

    .line 22024
    const-string v1, "umeng_general_config"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "thtstart"

    iget-wide v2, p0, Lu/aly/e;->m:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gkvc"

    iget v2, p0, Lu/aly/e;->n:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ekvc"

    iget v2, p0, Lu/aly/e;->o:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    return-void

    .line 21244
    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 113
    invoke-static {v0}, Lu/aly/ct;->a(Ljava/lang/Throwable;)V

    .line 114
    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lu/aly/e;->j:Lcom/umeng/analytics/aa;

    invoke-virtual {v1}, Lcom/umeng/analytics/aa;->e()V

    .line 119
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 21251
    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 21236
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 21237
    :goto_2
    :try_start_8
    invoke-static {v0}, Lu/aly/ct;->a(Ljava/lang/Throwable;)V

    .line 21238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 21240
    if-eqz v1, :cond_2

    .line 21242
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    .line 21247
    :cond_2
    :goto_3
    if-eqz v2, :cond_0

    .line 21249
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_1

    .line 21251
    :catch_4
    move-exception v0

    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 21244
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_3

    .line 21240
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_4
    if-eqz v1, :cond_3

    .line 21242
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    .line 21247
    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    .line 21249
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    .line 21252
    :cond_4
    :goto_6
    :try_start_e
    throw v0

    .line 21244
    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 21251
    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_6

    .line 21240
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_4

    .line 21236
    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_9
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method public final a(Lu/aly/fk;)V
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lu/aly/e;->c:Lu/aly/ap;

    invoke-virtual {v0, p1}, Lu/aly/ap;->a(Lu/aly/fk;)V

    .line 417
    iget-object v0, p0, Lu/aly/e;->b:Lu/aly/aq;

    invoke-virtual {v0, p1}, Lu/aly/aq;->a(Lu/aly/fk;)V

    .line 418
    iget-object v0, p0, Lu/aly/e;->d:Lu/aly/ar;

    invoke-virtual {v0, p1}, Lu/aly/ar;->a(Lu/aly/fk;)V

    .line 419
    iget-object v0, p0, Lu/aly/e;->k:Lu/aly/g;

    .line 28548
    invoke-virtual {p1}, Lu/aly/fk;->b()[I

    move-result-object v1

    .line 28549
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, v0, Lu/aly/g;->b:I

    .line 28550
    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lu/aly/g;->c:I

    .line 420
    return-void
.end method

.method public final a(Lu/aly/o;)V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 97
    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lu/aly/e;->i:Lu/aly/q;

    invoke-virtual {v0, p1}, Lu/aly/q;->a(Lu/aly/o;)V

    .line 101
    :cond_0
    instance-of v4, p1, Lu/aly/an;

    .line 2136
    iget-object v0, p0, Lu/aly/e;->a:Lu/aly/x;

    invoke-virtual {v0}, Lu/aly/x;->e()Z

    move-result v5

    .line 2137
    if-eqz v5, :cond_1

    .line 2138
    iget-object v0, p0, Lu/aly/e;->a:Lu/aly/x;

    .line 3109
    invoke-virtual {v0}, Lu/aly/x;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2138
    :goto_0
    sput-wide v0, Lu/aly/z;->c:J

    .line 3249
    :cond_1
    sget-object v0, Lu/aly/e;->f:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/cr;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3250
    const-string v0, "network is unavailable"

    invoke-static {v0}, Lu/aly/ct;->a(Ljava/lang/String;)V

    move v0, v2

    .line 2141
    :goto_1
    if-eqz v0, :cond_15

    .line 2142
    invoke-virtual {p0}, Lu/aly/e;->c()V

    :cond_2
    :goto_2
    return-void

    .line 3109
    :cond_3
    iget-wide v0, v0, Lu/aly/x;->e:J

    goto :goto_0

    .line 3254
    :cond_4
    iget-object v0, p0, Lu/aly/e;->a:Lu/aly/x;

    invoke-virtual {v0}, Lu/aly/x;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    .line 3255
    goto :goto_1

    .line 3257
    :cond_5
    iget-object v6, p0, Lu/aly/e;->k:Lu/aly/g;

    .line 4447
    iget-object v0, v6, Lu/aly/g;->f:Lu/aly/e;

    .line 5041
    iget-object v0, v0, Lu/aly/e;->b:Lu/aly/aq;

    .line 4447
    invoke-virtual {v0}, Lu/aly/aq;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4449
    iget-object v0, v6, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    instance-of v0, v0, Lcom/umeng/analytics/h;

    if-eqz v0, :cond_7

    iget-object v0, v6, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    invoke-virtual {v0}, Lcom/umeng/analytics/n;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    .line 4450
    :goto_3
    if-eqz v0, :cond_8

    iget-object v0, v6, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    :goto_4
    iput-object v0, v6, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    .line 4488
    :cond_6
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Report policy : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v6, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/ct;->a(Ljava/lang/String;)V

    .line 3493
    iget-object v0, v6, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    .line 3257
    invoke-virtual {v0, v4}, Lcom/umeng/analytics/n;->a(Z)Z

    move-result v0

    goto :goto_1

    :cond_7
    move v0, v2

    .line 4449
    goto :goto_3

    .line 4450
    :cond_8
    new-instance v0, Lcom/umeng/analytics/h;

    iget-object v1, v6, Lu/aly/g;->f:Lu/aly/e;

    .line 6041
    iget-object v1, v1, Lu/aly/e;->a:Lu/aly/x;

    .line 4450
    iget-object v7, v6, Lu/aly/g;->f:Lu/aly/e;

    .line 7041
    iget-object v7, v7, Lu/aly/e;->b:Lu/aly/aq;

    .line 4450
    invoke-direct {v0, v1, v7}, Lcom/umeng/analytics/h;-><init>(Lu/aly/x;Lu/aly/aq;)V

    goto :goto_4

    .line 4452
    :cond_9
    iget-object v0, v6, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    instance-of v0, v0, Lcom/umeng/analytics/i;

    if-eqz v0, :cond_a

    iget-object v0, v6, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    invoke-virtual {v0}, Lcom/umeng/analytics/n;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    .line 4453
    :goto_6
    if-nez v0, :cond_6

    .line 4454
    if-eqz v4, :cond_d

    iget-object v0, v6, Lu/aly/g;->f:Lu/aly/e;

    .line 8041
    iget-object v0, v0, Lu/aly/e;->d:Lu/aly/ar;

    .line 8052
    iget-object v1, v0, Lu/aly/ar;->a:Lcom/umeng/analytics/aa;

    invoke-virtual {v1}, Lcom/umeng/analytics/aa;->f()Z

    move-result v1

    if-nez v1, :cond_c

    .line 8056
    iget-object v1, v0, Lu/aly/ar;->b:Lu/aly/x;

    invoke-virtual {v1}, Lu/aly/x;->e()Z

    move-result v1

    if-nez v1, :cond_c

    .line 8060
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v1, v0, Lu/aly/ar;->b:Lu/aly/x;

    .line 8113
    iget-wide v10, v1, Lu/aly/x;->d:J

    .line 8060
    sub-long/2addr v8, v10

    .line 8061
    iget-wide v10, v0, Lu/aly/ar;->c:J

    cmp-long v1, v8, v10

    if-lez v1, :cond_b

    .line 8062
    iget-object v1, v0, Lu/aly/ar;->g:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/fe;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 8063
    iget v7, v0, Lu/aly/ar;->d:I

    invoke-static {v7, v1}, Lcom/umeng/analytics/r;->a(ILjava/lang/String;)I

    move-result v1

    int-to-long v10, v1

    iput-wide v10, v0, Lu/aly/ar;->e:J

    .line 8064
    iput-wide v8, v0, Lu/aly/ar;->f:J

    move v0, v3

    .line 4454
    :goto_7
    if-eqz v0, :cond_d

    .line 4455
    new-instance v0, Lcom/umeng/analytics/i;

    iget-object v1, v6, Lu/aly/g;->f:Lu/aly/e;

    .line 9041
    iget-object v1, v1, Lu/aly/e;->d:Lu/aly/ar;

    .line 9076
    iget-wide v8, v1, Lu/aly/ar;->e:J

    .line 4455
    long-to-int v1, v8

    invoke-direct {v0, v1}, Lcom/umeng/analytics/i;-><init>(I)V

    iput-object v0, v6, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    .line 4456
    iget-object v0, v6, Lu/aly/g;->f:Lu/aly/e;

    iget-object v1, v6, Lu/aly/g;->f:Lu/aly/e;

    .line 10041
    iget-object v1, v1, Lu/aly/e;->d:Lu/aly/ar;

    .line 10076
    iget-wide v8, v1, Lu/aly/ar;->e:J

    .line 4456
    long-to-int v1, v8

    .line 12149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v7, v0, Lu/aly/e;->a:Lu/aly/x;

    .line 13113
    iget-wide v10, v7, Lu/aly/x;->d:J

    .line 12149
    sub-long/2addr v8, v10

    long-to-int v7, v8

    .line 12151
    const/4 v8, 0x2

    new-array v8, v8, [I

    aput v1, v8, v2

    aput v7, v8, v3

    invoke-direct {v0, v8}, Lu/aly/e;->a([I)Lu/aly/z;

    move-result-object v7

    invoke-direct {v0, v7}, Lu/aly/e;->a(Lu/aly/z;)V

    .line 12152
    new-instance v7, Lu/aly/f;

    invoke-direct {v7, v0}, Lu/aly/f;-><init>(Lu/aly/e;)V

    int-to-long v0, v1

    invoke-static {v7, v0, v1}, Lcom/umeng/analytics/y;->a(Ljava/lang/Runnable;J)V

    goto/16 :goto_5

    :cond_a
    move v0, v2

    .line 4452
    goto :goto_6

    .line 8066
    :cond_b
    const-wide/32 v10, 0x7b98a00

    cmp-long v1, v8, v10

    if-lez v1, :cond_c

    .line 8067
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lu/aly/ar;->e:J

    .line 8068
    iput-wide v8, v0, Lu/aly/ar;->f:J

    move v0, v3

    .line 8069
    goto :goto_7

    :cond_c
    move v0, v2

    .line 8072
    goto :goto_7

    .line 4459
    :cond_d
    sget-boolean v0, Lu/aly/ct;->a:Z

    if-eqz v0, :cond_f

    iget-object v0, v6, Lu/aly/g;->f:Lu/aly/e;

    .line 14041
    iget-object v0, v0, Lu/aly/e;->e:Lu/aly/fk;

    .line 14452
    iget v0, v0, Lu/aly/fk;->e:I

    if-ne v0, v3, :cond_e

    move v0, v3

    .line 4459
    :goto_8
    if-eqz v0, :cond_f

    .line 4460
    const-string v0, "Debug: send log every 15 seconds"

    invoke-static {v0}, Lu/aly/ct;->a(Ljava/lang/String;)V

    .line 4461
    new-instance v0, Lcom/umeng/analytics/g;

    iget-object v1, v6, Lu/aly/g;->f:Lu/aly/e;

    .line 15041
    iget-object v1, v1, Lu/aly/e;->a:Lu/aly/x;

    .line 4461
    invoke-direct {v0, v1}, Lcom/umeng/analytics/g;-><init>(Lu/aly/x;)V

    iput-object v0, v6, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    goto/16 :goto_5

    :cond_e
    move v0, v2

    .line 14452
    goto :goto_8

    .line 4462
    :cond_f
    iget-object v0, v6, Lu/aly/g;->f:Lu/aly/e;

    .line 16041
    iget-object v0, v0, Lu/aly/e;->c:Lu/aly/ap;

    .line 16226
    iget-boolean v0, v0, Lu/aly/ap;->a:Z

    .line 4462
    if-eqz v0, :cond_13

    .line 4463
    const-string v0, "Start A/B Test"

    invoke-static {v0}, Lu/aly/ct;->a(Ljava/lang/String;)V

    .line 4465
    iget-object v0, v6, Lu/aly/g;->f:Lu/aly/e;

    .line 17041
    iget-object v0, v0, Lu/aly/e;->c:Lu/aly/ap;

    .line 17230
    iget v0, v0, Lu/aly/ap;->b:I

    .line 4465
    const/4 v1, 0x6

    if-ne v0, v1, :cond_18

    .line 4466
    iget-object v0, v6, Lu/aly/g;->f:Lu/aly/e;

    .line 18041
    iget-object v0, v0, Lu/aly/e;->e:Lu/aly/fk;

    .line 18444
    iget v0, v0, Lu/aly/fk;->c:I

    if-eq v0, v12, :cond_10

    move v0, v3

    .line 4466
    :goto_9
    if-eqz v0, :cond_11

    .line 4467
    iget-object v0, v6, Lu/aly/g;->f:Lu/aly/e;

    .line 19041
    iget-object v0, v0, Lu/aly/e;->e:Lu/aly/fk;

    .line 4467
    const v1, 0x15f90

    invoke-virtual {v0, v1}, Lu/aly/fk;->a(I)I

    move-result v0

    .line 4474
    :goto_a
    iget-object v1, v6, Lu/aly/g;->f:Lu/aly/e;

    .line 20041
    iget-object v1, v1, Lu/aly/e;->c:Lu/aly/ap;

    .line 20230
    iget v1, v1, Lu/aly/ap;->b:I

    .line 4474
    invoke-virtual {v6, v1, v0}, Lu/aly/g;->a(II)Lcom/umeng/analytics/n;

    move-result-object v0

    iput-object v0, v6, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    goto/16 :goto_5

    :cond_10
    move v0, v2

    .line 18444
    goto :goto_9

    .line 4468
    :cond_11
    iget v0, v6, Lu/aly/g;->c:I

    if-lez v0, :cond_12

    .line 4469
    iget v0, v6, Lu/aly/g;->c:I

    goto :goto_a

    .line 4471
    :cond_12
    iget v0, v6, Lu/aly/g;->e:I

    goto :goto_a

    .line 4476
    :cond_13
    iget v1, v6, Lu/aly/g;->d:I

    .line 4477
    iget v0, v6, Lu/aly/g;->e:I

    .line 4478
    iget v7, v6, Lu/aly/g;->b:I

    if-eq v7, v12, :cond_14

    .line 4479
    iget v1, v6, Lu/aly/g;->b:I

    .line 4480
    iget v0, v6, Lu/aly/g;->c:I

    .line 4482
    :cond_14
    invoke-virtual {v6, v1, v0}, Lu/aly/g;->a(II)Lcom/umeng/analytics/n;

    move-result-object v0

    iput-object v0, v6, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    goto/16 :goto_5

    .line 2143
    :cond_15
    if-nez v5, :cond_17

    .line 20261
    iget-object v0, p0, Lu/aly/e;->i:Lu/aly/q;

    invoke-virtual {v0}, Lu/aly/q;->a()I

    move-result v0

    iget v1, p0, Lu/aly/e;->l:I

    if-le v0, v1, :cond_16

    move v2, v3

    .line 2143
    :cond_16
    if-eqz v2, :cond_2

    .line 2144
    :cond_17
    invoke-virtual {p0}, Lu/aly/e;->a()V

    goto/16 :goto_2

    :cond_18
    move v0, v2

    goto :goto_a
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-direct {p0, v0}, Lu/aly/e;->a([I)Lu/aly/z;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/e;->a(Lu/aly/z;)V

    .line 131
    return-void
.end method

.method public final b(Lu/aly/o;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lu/aly/e;->i:Lu/aly/q;

    invoke-virtual {v0, p1}, Lu/aly/q;->a(Lu/aly/o;)V

    .line 106
    return-void
.end method

.method final c()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 266
    :try_start_0
    iget-object v2, p0, Lu/aly/e;->j:Lcom/umeng/analytics/aa;

    invoke-virtual {v2}, Lcom/umeng/analytics/aa;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    new-instance v0, Lu/aly/u;

    sget-object v1, Lu/aly/e;->f:Landroid/content/Context;

    iget-object v2, p0, Lu/aly/e;->a:Lu/aly/x;

    invoke-direct {v0, v1, v2}, Lu/aly/u;-><init>(Landroid/content/Context;Lu/aly/x;)V

    .line 268
    invoke-virtual {v0, p0}, Lu/aly/u;->a(Lu/aly/t;)V

    .line 269
    iget-object v1, p0, Lu/aly/e;->b:Lu/aly/aq;

    invoke-virtual {v1}, Lu/aly/aq;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26079
    const/4 v1, 0x1

    iput-boolean v1, v0, Lu/aly/u;->e:Z

    .line 272
    :cond_0
    invoke-virtual {v0}, Lu/aly/u;->a()V

    .line 299
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-direct {p0, v2}, Lu/aly/e;->a([I)Lu/aly/z;

    move-result-object v3

    .line 26308
    if-eqz v3, :cond_5

    .line 26399
    iget-object v2, v3, Lu/aly/z;->a:Lu/aly/am;

    iget-object v2, v2, Lu/aly/am;->t:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v3, Lu/aly/z;->a:Lu/aly/am;

    iget-object v2, v2, Lu/aly/am;->s:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v3, Lu/aly/z;->a:Lu/aly/am;

    iget-object v2, v2, Lu/aly/am;->r:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v3, Lu/aly/z;->a:Lu/aly/am;

    iget-object v2, v2, Lu/aly/am;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v3, Lu/aly/z;->a:Lu/aly/am;

    iget-object v2, v2, Lu/aly/am;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v3, Lu/aly/z;->a:Lu/aly/am;

    iget-object v2, v2, Lu/aly/am;->f:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v3, Lu/aly/z;->a:Lu/aly/am;

    iget-object v2, v2, Lu/aly/am;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v3, Lu/aly/z;->a:Lu/aly/am;

    iget-object v2, v2, Lu/aly/am;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v0

    .line 26313
    :goto_1
    if-eqz v2, :cond_5

    .line 276
    :goto_2
    if-eqz v0, :cond_1

    .line 281
    new-instance v0, Lu/aly/u;

    sget-object v1, Lu/aly/e;->f:Landroid/content/Context;

    iget-object v2, p0, Lu/aly/e;->a:Lu/aly/x;

    invoke-direct {v0, v1, v2}, Lu/aly/u;-><init>(Landroid/content/Context;Lu/aly/x;)V

    .line 282
    invoke-virtual {v0, p0}, Lu/aly/u;->a(Lu/aly/t;)V

    .line 283
    iget-object v1, p0, Lu/aly/e;->b:Lu/aly/aq;

    invoke-virtual {v1}, Lu/aly/aq;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27079
    const/4 v1, 0x1

    iput-boolean v1, v0, Lu/aly/u;->e:Z

    .line 286
    :cond_3
    invoke-direct {p0, v3}, Lu/aly/e;->b(Lu/aly/z;)Lu/aly/z;

    move-result-object v1

    .line 28071
    iput-object v1, v0, Lu/aly/u;->c:Lu/aly/z;

    .line 287
    invoke-direct {p0}, Lu/aly/e;->d()Z

    move-result v1

    .line 28075
    iput-boolean v1, v0, Lu/aly/u;->d:Z

    .line 288
    invoke-virtual {v0}, Lu/aly/u;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_4
    move v2, v1

    .line 26404
    goto :goto_1

    :cond_5
    move v0, v1

    .line 26316
    goto :goto_2
.end method
