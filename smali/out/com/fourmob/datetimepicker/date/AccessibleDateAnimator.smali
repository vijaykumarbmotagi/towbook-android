.class public Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;
.super Landroid/widget/ViewAnimator;
.source "AccessibleDateAnimator.java"


# instance fields
.field private mDateMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6

    .line 25
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_24

    .line 27
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/16 v0, 0x16

    .line 31
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;->mDateMillis:J

    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    .line 35
    :cond_24
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public setDateMillis(J)V
    .registers 3

    .line 17
    iput-wide p1, p0, Lcom/fourmob/datetimepicker/date/AccessibleDateAnimator;->mDateMillis:J

    return-void
.end method
