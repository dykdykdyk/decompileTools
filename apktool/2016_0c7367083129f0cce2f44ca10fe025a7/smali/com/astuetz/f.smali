.class final Lcom/astuetz/f;
.super Landroid/database/DataSetObserver;
.source "PagerSlidingTabStrip.java"


# instance fields
.field a:Z

.field final synthetic b:Lcom/astuetz/PagerSlidingTabStrip;


# direct methods
.method private constructor <init>(Lcom/astuetz/PagerSlidingTabStrip;)V
    .locals 1

    .prologue
    .line 514
    iput-object p1, p0, Lcom/astuetz/f;->b:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/astuetz/f;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/astuetz/PagerSlidingTabStrip;B)V
    .locals 0

    .prologue
    .line 514
    invoke-direct {p0, p1}, Lcom/astuetz/f;-><init>(Lcom/astuetz/PagerSlidingTabStrip;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/astuetz/f;->b:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip;->a()V

    .line 521
    return-void
.end method
