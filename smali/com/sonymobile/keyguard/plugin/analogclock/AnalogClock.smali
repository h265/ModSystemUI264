.class public Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;
.super Landroid/view/View;
.source "AnalogClock.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPlugin;


# static fields
.field private static final DATE_FORMAT_RESOURCES:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlarmDrawable:Landroid/graphics/drawable/Drawable;

.field private mAlarmDrawableMargin:F

.field private mAlarmDrawableVerticalOffset:F

.field private final mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

.field private final mCenter:Landroid/graphics/RectF;

.field private final mCenterClipPath:Landroid/graphics/Path;

.field private mCenterSize:F

.field private mCenterStrokeWidth:F

.field private final mDateFormats:[Ljava/lang/String;

.field private mDateTextSize:F

.field private mDateTextSpace:F

.field private final mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

.field private mEllipseDepth:F

.field private mEllipsePower:F

.field private final mHandler:Landroid/os/Handler;

.field private final mHourHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

.field private mHourTickLength:F

.field private final mHourTickPath:Landroid/graphics/Path;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mInvalidateBounds:Landroid/graphics/Rect;

.field private mIsTicking:Z

.field private final mMinuteHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

.field private mMinuteTickLength:F

.field private final mMinuteTickPath:Landroid/graphics/Path;

.field private final mOldDates:[Ljava/lang/String;

.field private mOldSecondsDotBounds:Landroid/graphics/Rect;

.field private final mSecondDot:Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;

.field private final mSecondRunnable:Ljava/lang/Runnable;

.field private mSecondsDotUpdateBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private final mTickPaint:Landroid/graphics/Paint;

.field private mTickRadius:F

.field private mTickWidth:F

.field private final mTime:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/keyguard/R$string;->somc_analog_clock_date_format_month:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/android/keyguard/R$string;->somc_analog_clock_date_format_day_in_month:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/keyguard/R$string;->somc_analog_clock_date_format_day_in_week:I

    aput v2, v0, v1

    sput-object v0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->DATE_FORMAT_RESOURCES:[I

    .line 78
    const-class v0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x3

    .line 189
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    new-instance v1, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$1;-><init>(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondRunnable:Ljava/lang/Runnable;

    .line 94
    new-instance v1, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock$2;-><init>(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    iput v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mEllipseDepth:F

    .line 108
    iput v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mEllipsePower:F

    .line 110
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickWidth:F

    .line 112
    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickRadius:F

    .line 114
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteTickPath:Landroid/graphics/Path;

    .line 116
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourTickPath:Landroid/graphics/Path;

    .line 118
    const/high16 v1, 0x41b00000    # 22.0f

    iput v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourTickLength:F

    .line 120
    const/high16 v1, 0x41400000    # 12.0f

    iput v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteTickLength:F

    .line 122
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    .line 124
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHandler:Landroid/os/Handler;

    .line 126
    new-instance v1, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    sget v2, Lcom/android/keyguard/R$styleable;->AnalogClock_centerSize:I

    sget v3, Lcom/android/keyguard/R$styleable;->AnalogClock_hourHandLength:I

    sget v4, Lcom/android/keyguard/R$styleable;->AnalogClock_hourHandThickness:I

    sget v5, Lcom/android/keyguard/R$styleable;->AnalogClock_clockColor:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;-><init>(IIII)V

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    .line 132
    new-instance v1, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    sget v2, Lcom/android/keyguard/R$styleable;->AnalogClock_centerSize:I

    sget v3, Lcom/android/keyguard/R$styleable;->AnalogClock_minuteHandLength:I

    sget v4, Lcom/android/keyguard/R$styleable;->AnalogClock_minuteHandThickness:I

    sget v5, Lcom/android/keyguard/R$styleable;->AnalogClock_clockColor:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;-><init>(IIII)V

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    .line 138
    new-instance v1, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;

    sget v2, Lcom/android/keyguard/R$styleable;->AnalogClock_secondDotDiameter:I

    sget v3, Lcom/android/keyguard/R$styleable;->AnalogClock_secondDotColor:I

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;-><init>(II)V

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondDot:Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;

    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTime:Ljava/util/Calendar;

    .line 143
    new-array v1, v6, [Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    .line 150
    new-array v1, v6, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateFormats:[Ljava/lang/String;

    .line 152
    new-array v1, v6, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mOldDates:[Ljava/lang/String;

    .line 154
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mInvalidateBounds:Landroid/graphics/Rect;

    .line 156
    invoke-static {}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->createTextPaint()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTextPaint:Landroid/graphics/Paint;

    .line 158
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenter:Landroid/graphics/RectF;

    .line 164
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterClipPath:Landroid/graphics/Path;

    .line 166
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mOldSecondsDotBounds:Landroid/graphics/Rect;

    .line 168
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondsDotUpdateBounds:Landroid/graphics/Rect;

    .line 178
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mIsTicking:Z

    .line 191
    new-instance v1, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 193
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateFormats:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->DATE_FORMAT_RESOURCES:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 194
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mOldDates:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 195
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    new-instance v2, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;-><init>(Landroid/graphics/Paint;)V

    aput-object v2, v1, v0

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupAttributes(Landroid/util/AttributeSet;)V

    .line 199
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupPaint()V

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setTimeZone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateDateTexts()V

    return-void
.end method

.method private drawAlarm(Landroid/graphics/Canvas;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 299
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    invoke-virtual {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 300
    const v2, 0x3fcccccd    # 1.6f

    mul-float v1, p3, v2

    .line 301
    .local v1, "yPos":F
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    invoke-virtual {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->measureTextBounds()V

    .line 302
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 303
    .local v0, "drawableWidthAdjust":I
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    invoke-virtual {v2}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p2

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    invoke-virtual {v3}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawableMargin:F

    sub-float/2addr v2, v3

    invoke-direct {p0, p1, v2, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->drawAlarmDrawable(Landroid/graphics/Canvas;FF)V

    .line 305
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    int-to-float v3, v0

    add-float/2addr v3, p2

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v1, v4}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->drawTextScaledToWidth(Landroid/graphics/Canvas;FFF)V

    .line 307
    .end local v0    # "drawableWidthAdjust":I
    .end local v1    # "yPos":F
    :cond_0
    return-void
.end method

.method private drawAlarmDrawable(Landroid/graphics/Canvas;FF)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 310
    iget-object v6, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 311
    .local v2, "drawableWidth":I
    iget-object v6, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 312
    .local v1, "drawableHeight":I
    float-to-int v3, p2

    .line 313
    .local v3, "left":I
    add-int v4, v3, v2

    .line 314
    .local v4, "right":I
    iget-object v6, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    invoke-virtual {v6}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getBottom()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, p3

    iget v7, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawableVerticalOffset:F

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 315
    .local v0, "bottom":I
    sub-int v5, v0, v1

    .line 316
    .local v5, "top":I
    iget-object v6, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3, v5, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 317
    iget-object v6, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 318
    return-void
.end method

.method private drawCenter(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 322
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenter:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 323
    return-void
.end method

.method private drawClockFace(Landroid/graphics/Canvas;II)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 278
    int-to-float v3, p2

    div-float v0, v3, v4

    .line 279
    .local v0, "centerX":F
    int-to-float v3, p3

    div-float v1, v3, v4

    .line 280
    .local v1, "centerY":F
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->drawTicks(Landroid/graphics/Canvas;)V

    .line 281
    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->drawDateBlock(Landroid/graphics/Canvas;FF)V

    .line 282
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 283
    .local v2, "savePoint":I
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterClipPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 284
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    invoke-virtual {v3, p1, v0, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->draw(Landroid/graphics/Canvas;FF)V

    .line 285
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    invoke-virtual {v3, p1, v0, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->draw(Landroid/graphics/Canvas;FF)V

    .line 286
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 287
    invoke-direct {p0, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->drawCenter(Landroid/graphics/Canvas;)V

    .line 288
    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->drawAlarm(Landroid/graphics/Canvas;FF)V

    .line 289
    return-void
.end method

.method private drawDateBlock(Landroid/graphics/Canvas;FF)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "centerX"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x1

    .line 357
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->measureDateStrings()V

    .line 358
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->maxDateTextWidth()F

    move-result v1

    .line 359
    .local v1, "textWidth":F
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    invoke-virtual {v4}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->getLength()F

    move-result v0

    .line 362
    .local v0, "hourHandLength":F
    iget v4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterSize:F

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    add-float/2addr v4, p2

    add-float v5, v0, p2

    iget v6, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourTickLength:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float v2, v4, v5

    .line 364
    .local v2, "xPos":F
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    sub-float v4, p3, v4

    iget v5, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTextSpace:F

    sub-float v3, v4, v5

    .line 365
    .local v3, "yPos":F
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    aget-object v4, v4, v9

    invoke-virtual {v4, p1, v2, v3, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->drawTextScaledToWidth(Landroid/graphics/Canvas;FFF)V

    .line 366
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTextSpace:F

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 368
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    aget-object v4, v4, v7

    invoke-virtual {v4, p1, v2, v3, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->drawTextScaledToWidth(Landroid/graphics/Canvas;FFF)V

    .line 369
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    aget-object v5, v5, v10

    invoke-virtual {v5}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTextSpace:F

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 371
    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    aget-object v4, v4, v10

    invoke-virtual {v4, p1, v2, v3, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->drawTextScaledToWidth(Landroid/graphics/Canvas;FFF)V

    .line 372
    return-void
.end method

.method private drawTick(Landroid/graphics/Path;FFFF)V
    .locals 8
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "length"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "radians"    # F

    .prologue
    .line 401
    invoke-virtual {p0, p5}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->getRadiusOffset(F)F

    move-result v4

    .line 402
    .local v4, "radius":F
    float-to-double v6, p5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 403
    .local v0, "dx":F
    float-to-double v6, p5

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 404
    .local v1, "dy":F
    iget v5, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickRadius:F

    sub-float/2addr v5, p2

    add-float v3, v5, v4

    .line 405
    .local v3, "offsetLength":F
    add-float v2, v3, p2

    .line 406
    .local v2, "offset":F
    mul-float v5, v3, v0

    add-float/2addr v5, p3

    mul-float v6, v3, v1

    add-float/2addr v6, p4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 407
    mul-float v5, v2, v0

    add-float/2addr v5, p3

    mul-float v6, v2, v1

    add-float/2addr v6, p4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 408
    return-void
.end method

.method private drawTicks(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 293
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteTickPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 294
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 295
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourTickPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 296
    return-void
.end method

.method private invalidateDateBounds()V
    .locals 3

    .prologue
    .line 468
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mInvalidateBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getBoundsReadOnly()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 469
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mInvalidateBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getBoundsReadOnly()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 470
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mInvalidateBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getBoundsReadOnly()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 471
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mInvalidateBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->invalidate(Landroid/graphics/Rect;)V

    .line 472
    return-void
.end method

.method private maxDateTextWidth()F
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private measureDateStrings()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->measureTextBounds()V

    .line 382
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->measureTextBounds()V

    .line 383
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->measureTextBounds()V

    .line 384
    return-void
.end method

.method private setTimeZone(Ljava/lang/String;)V
    .locals 2
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 528
    if-nez p1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 533
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTime:Ljava/util/Calendar;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method private setupAlarmAttributes(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 222
    sget v0, Lcom/android/keyguard/R$styleable;->AnalogClock_alarmDrawable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawable:Landroid/graphics/drawable/Drawable;

    .line 223
    sget v0, Lcom/android/keyguard/R$styleable;->AnalogClock_alarmDrawableMargin:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawableMargin:F

    .line 225
    sget v0, Lcom/android/keyguard/R$styleable;->AnalogClock_alarmDrawableVerticalOffset:I

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawableVerticalOffset:F

    .line 227
    return-void
.end method

.method private setupAttributes(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/R$styleable;->AnalogClock:[I

    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 206
    .local v0, "typedAttributes":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupEllipseAttributes(Landroid/content/res/TypedArray;)V

    .line 207
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupTicksAttributes(Landroid/content/res/TypedArray;)V

    .line 208
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->applyAttributes(Landroid/content/res/TypedArray;)V

    .line 209
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->applyAttributes(Landroid/content/res/TypedArray;)V

    .line 210
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondDot:Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;

    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->applyAttributes(Landroid/content/res/TypedArray;)V

    .line 211
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupClockColor(Landroid/content/res/TypedArray;)V

    .line 212
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupAlarmAttributes(Landroid/content/res/TypedArray;)V

    .line 213
    sget v1, Lcom/android/keyguard/R$styleable;->AnalogClock_centerSize:I

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterSize:F

    .line 215
    invoke-direct {p0, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupCenterAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 219
    return-void

    .line 217
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private setupCenterAttributes(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 258
    sget v0, Lcom/android/keyguard/R$styleable;->AnalogClock_centerStrokeWidth:I

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterStrokeWidth:F

    .line 259
    return-void
.end method

.method private setupClockColor(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 230
    sget v1, Lcom/android/keyguard/R$styleable;->AnalogClock_clockColor:I

    const v2, -0xff01

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 231
    .local v0, "color":I
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupDateTextAttributes(Landroid/content/res/TypedArray;I)V

    .line 232
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    return-void
.end method

.method private setupClockText(Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;F)V
    .locals 1
    .param p1, "text"    # Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;
    .param p2, "sizeScaleFactor"    # F

    .prologue
    .line 267
    iget v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTextSize:F

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->setTextSize(F)V

    .line 268
    return-void
.end method

.method private setupDateTextAttributes(Landroid/content/res/TypedArray;I)V
    .locals 3
    .param p1, "attrs"    # Landroid/content/res/TypedArray;
    .param p2, "color"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 236
    sget v0, Lcom/android/keyguard/R$styleable;->AnalogClock_dateTextSize:I

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTextSize:F

    .line 237
    sget v0, Lcom/android/keyguard/R$styleable;->AnalogClock_dateTextSpace:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTextSpace:F

    .line 238
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupClockText(Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;F)V

    .line 240
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupClockText(Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;F)V

    .line 241
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupClockText(Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;F)V

    .line 242
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupClockText(Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;F)V

    .line 243
    return-void
.end method

.method private setupEllipseAttributes(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 253
    sget v0, Lcom/android/keyguard/R$styleable;->AnalogClock_ellipseDepth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mEllipseDepth:F

    .line 254
    sget v0, Lcom/android/keyguard/R$styleable;->AnalogClock_ellipsePower:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mEllipsePower:F

    .line 255
    return-void
.end method

.method private setupPaint()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 263
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 264
    return-void
.end method

.method private setupTickPath(II)V
    .locals 7
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteTickPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 388
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourTickPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 389
    const/4 v6, 0x0

    .local v6, "degrees":I
    :goto_0
    const/16 v0, 0x168

    if-ge v6, v0, :cond_1

    .line 390
    int-to-double v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v5, v0

    .line 391
    .local v5, "radians":F
    rem-int/lit8 v0, v6, 0x1e

    if-nez v0, :cond_0

    .line 392
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourTickPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourTickLength:F

    int-to-float v3, p1

    int-to-float v4, p2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->drawTick(Landroid/graphics/Path;FFFF)V

    .line 389
    :goto_1
    add-int/lit8 v6, v6, 0x6

    goto :goto_0

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteTickPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteTickLength:F

    int-to-float v3, p1

    int-to-float v4, p2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->drawTick(Landroid/graphics/Path;FFFF)V

    goto :goto_1

    .line 397
    .end local v5    # "radians":F
    :cond_1
    return-void
.end method

.method private setupTicksAttributes(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 246
    sget v0, Lcom/android/keyguard/R$styleable;->AnalogClock_tickWidth:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickWidth:F

    .line 247
    sget v0, Lcom/android/keyguard/R$styleable;->AnalogClock_tickRadius:I

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickRadius:F

    .line 248
    sget v0, Lcom/android/keyguard/R$styleable;->AnalogClock_hourTickLength:I

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourTickLength:F

    .line 249
    sget v0, Lcom/android/keyguard/R$styleable;->AnalogClock_minuteTickLength:I

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteTickLength:F

    .line 250
    return-void
.end method

.method private updateClock(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 430
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTime:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 431
    .local v2, "minutes":I
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHourHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTime:Ljava/util/Calendar;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f060a92

    mul-float/2addr v4, v5

    int-to-float v5, v2

    const v6, 0x3c0efa35

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->setRotation(F)Z

    move-result v0

    .line 433
    .local v0, "hourHandChanged":Z
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteHand:Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;

    int-to-float v4, v2

    const v5, 0x3dd67750

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sonymobile/keyguard/plugin/analogclock/StandardClockHand;->setRotation(F)Z

    move-result v1

    .line 435
    .local v1, "minuteHandChanged":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->invalidate()V

    .line 439
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateSecondsHand()V

    .line 440
    return-void
.end method

.method private updateDateTexts()V
    .locals 5

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->invalidateDateBounds()V

    .line 456
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 458
    .local v2, "locale":Ljava/util/Locale;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 459
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateFormats:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTime:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 460
    .local v0, "currentDate":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mOldDates:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 461
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mOldDates:[Ljava/lang/String;

    aput-object v0, v3, v1

    .line 462
    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mDateTexts:[Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    aget-object v3, v3, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->setText(Ljava/lang/String;)V

    .line 458
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 465
    .end local v0    # "currentDate":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateSecondsHand()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 443
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTime:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dd67750

    mul-float v1, v2, v3

    .line 444
    .local v1, "secondRadians":F
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondDot:Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;

    invoke-virtual {v2, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->setRotation(F)Z

    .line 445
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondDot:Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mOldSecondsDotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->getBounds(Landroid/graphics/Rect;)V

    .line 446
    invoke-virtual {p0, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->getRadiusOffset(F)F

    move-result v2

    iget v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTickRadius:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mMinuteTickLength:F

    div-float/2addr v3, v5

    sub-float v0, v2, v3

    .line 447
    .local v0, "radius":F
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondDot:Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->calculateSecondsDotPosition(FFFF)V

    .line 449
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondDot:Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondsDotUpdateBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->getBounds(Landroid/graphics/Rect;)V

    .line 450
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondsDotUpdateBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mOldSecondsDotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 451
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondsDotUpdateBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->invalidate(Landroid/graphics/Rect;)V

    .line 452
    return-void
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 424
    .local v0, "time":J
    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mTime:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 426
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateClock(II)V

    .line 427
    return-void
.end method


# virtual methods
.method public getRadiusOffset(F)F
    .locals 8
    .param p1, "radians"    # F

    .prologue
    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, "radius":I
    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mEllipseDepth:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    .line 416
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 417
    .local v2, "val":D
    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mEllipsePower:F

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mEllipseDepth:F

    float-to-double v6, v1

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 419
    .end local v2    # "val":D
    :cond_0
    int-to-float v1, v0

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 273
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->drawClockFace(Landroid/graphics/Canvas;II)V

    .line 274
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondDot:Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;

    invoke-virtual {v0, p1}, Lcom/sonymobile/keyguard/plugin/analogclock/SecondDotHand;->draw(Landroid/graphics/Canvas;)V

    .line 275
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 511
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenter:Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterSize:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    int-to-float v2, p2

    iget v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterSize:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    int-to-float v3, p1

    iget v4, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterSize:F

    add-float/2addr v3, v4

    div-float/2addr v3, v6

    int-to-float v4, p1

    iget v5, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterSize:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 513
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setupTickPath(II)V

    .line 514
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 515
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenterClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mCenter:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 516
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateClock(II)V

    .line 517
    return-void
.end method

.method public setNextAlarmText(Ljava/lang/String;)V
    .locals 2
    .param p1, "alarmText"    # Ljava/lang/String;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->setText(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mInvalidateBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmText:Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;

    invoke-virtual {v1}, Lcom/sonymobile/keyguard/plugin/analogclock/HorizontalScalingText;->getBoundsReadOnly()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 523
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mInvalidateBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mAlarmDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 524
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mInvalidateBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->invalidate(Landroid/graphics/Rect;)V

    .line 525
    return-void
.end method

.method public startClockTicking()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 479
    iget-boolean v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mIsTicking:Z

    if-nez v1, :cond_0

    .line 480
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 482
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 487
    invoke-direct {p0, v4}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->setTimeZone(Ljava/lang/String;)V

    .line 488
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateTime()V

    .line 490
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->updateDateTexts()V

    .line 491
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 492
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mIsTicking:Z

    .line 494
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public stopClockTicking()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mSecondRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 503
    iget-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mIsTicking:Z

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/keyguard/plugin/analogclock/AnalogClock;->mIsTicking:Z

    .line 507
    :cond_0
    return-void
.end method
