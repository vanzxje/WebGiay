﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Shop_Giay
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="WebApp")]
	public partial class DataClassesDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertCAUHINH(CAUHINH instance);
    partial void UpdateCAUHINH(CAUHINH instance);
    partial void DeleteCAUHINH(CAUHINH instance);
    partial void InsertDANHMUCSP(DANHMUCSP instance);
    partial void UpdateDANHMUCSP(DANHMUCSP instance);
    partial void DeleteDANHMUCSP(DANHMUCSP instance);
    partial void InsertSANPHAM(SANPHAM instance);
    partial void UpdateSANPHAM(SANPHAM instance);
    partial void DeleteSANPHAM(SANPHAM instance);
    partial void InsertTAIKHOAN(TAIKHOAN instance);
    partial void UpdateTAIKHOAN(TAIKHOAN instance);
    partial void DeleteTAIKHOAN(TAIKHOAN instance);
    partial void InsertTINTUC(TINTUC instance);
    partial void UpdateTINTUC(TINTUC instance);
    partial void DeleteTINTUC(TINTUC instance);
    #endregion
		
		public DataClassesDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnectionString1"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public DataClassesDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClassesDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClassesDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClassesDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<CAUHINH> CAUHINHs
		{
			get
			{
				return this.GetTable<CAUHINH>();
			}
		}
		
		public System.Data.Linq.Table<DANHMUCSP> DANHMUCSPs
		{
			get
			{
				return this.GetTable<DANHMUCSP>();
			}
		}
		
		public System.Data.Linq.Table<SANPHAM> SANPHAMs
		{
			get
			{
				return this.GetTable<SANPHAM>();
			}
		}
		
		public System.Data.Linq.Table<TAIKHOAN> TAIKHOANs
		{
			get
			{
				return this.GetTable<TAIKHOAN>();
			}
		}
		
		public System.Data.Linq.Table<TINTUC> TINTUCs
		{
			get
			{
				return this.GetTable<TINTUC>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.CAUHINH")]
	public partial class CAUHINH : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _IdValue;
		
		private string _GiaTri;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdValueChanging(string value);
    partial void OnIdValueChanged();
    partial void OnGiaTriChanging(string value);
    partial void OnGiaTriChanged();
    #endregion
		
		public CAUHINH()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IdValue", DbType="NVarChar(50) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string IdValue
		{
			get
			{
				return this._IdValue;
			}
			set
			{
				if ((this._IdValue != value))
				{
					this.OnIdValueChanging(value);
					this.SendPropertyChanging();
					this._IdValue = value;
					this.SendPropertyChanged("IdValue");
					this.OnIdValueChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GiaTri", DbType="NVarChar(MAX)")]
		public string GiaTri
		{
			get
			{
				return this._GiaTri;
			}
			set
			{
				if ((this._GiaTri != value))
				{
					this.OnGiaTriChanging(value);
					this.SendPropertyChanging();
					this._GiaTri = value;
					this.SendPropertyChanged("GiaTri");
					this.OnGiaTriChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.DANHMUCSP")]
	public partial class DANHMUCSP : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private long _IdDanhMuc;
		
		private string _TenDM;
		
		private System.Nullable<int> _Position;
		
		private string _Notes;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdDanhMucChanging(long value);
    partial void OnIdDanhMucChanged();
    partial void OnTenDMChanging(string value);
    partial void OnTenDMChanged();
    partial void OnPositionChanging(System.Nullable<int> value);
    partial void OnPositionChanged();
    partial void OnNotesChanging(string value);
    partial void OnNotesChanged();
    #endregion
		
		public DANHMUCSP()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IdDanhMuc", AutoSync=AutoSync.OnInsert, DbType="BigInt NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public long IdDanhMuc
		{
			get
			{
				return this._IdDanhMuc;
			}
			set
			{
				if ((this._IdDanhMuc != value))
				{
					this.OnIdDanhMucChanging(value);
					this.SendPropertyChanging();
					this._IdDanhMuc = value;
					this.SendPropertyChanged("IdDanhMuc");
					this.OnIdDanhMucChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TenDM", DbType="NVarChar(MAX)")]
		public string TenDM
		{
			get
			{
				return this._TenDM;
			}
			set
			{
				if ((this._TenDM != value))
				{
					this.OnTenDMChanging(value);
					this.SendPropertyChanging();
					this._TenDM = value;
					this.SendPropertyChanged("TenDM");
					this.OnTenDMChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Position", DbType="Int")]
		public System.Nullable<int> Position
		{
			get
			{
				return this._Position;
			}
			set
			{
				if ((this._Position != value))
				{
					this.OnPositionChanging(value);
					this.SendPropertyChanging();
					this._Position = value;
					this.SendPropertyChanged("Position");
					this.OnPositionChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Notes", DbType="NVarChar(MAX)")]
		public string Notes
		{
			get
			{
				return this._Notes;
			}
			set
			{
				if ((this._Notes != value))
				{
					this.OnNotesChanging(value);
					this.SendPropertyChanging();
					this._Notes = value;
					this.SendPropertyChanged("Notes");
					this.OnNotesChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.SANPHAM")]
	public partial class SANPHAM : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private long _IdSanPham;
		
		private string _HinhSP;
		
		private string _TenSP;
		
		private string _GiaGoc;
		
		private string _GiaSP;
		
		private System.Nullable<long> _IdDM;
		
		private string _MoTa;
		
		private string _ChiTietSP;
		
		private string _Notes;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdSanPhamChanging(long value);
    partial void OnIdSanPhamChanged();
    partial void OnHinhSPChanging(string value);
    partial void OnHinhSPChanged();
    partial void OnTenSPChanging(string value);
    partial void OnTenSPChanged();
    partial void OnGiaGocChanging(string value);
    partial void OnGiaGocChanged();
    partial void OnGiaSPChanging(string value);
    partial void OnGiaSPChanged();
    partial void OnIdDMChanging(System.Nullable<long> value);
    partial void OnIdDMChanged();
    partial void OnMoTaChanging(string value);
    partial void OnMoTaChanged();
    partial void OnChiTietSPChanging(string value);
    partial void OnChiTietSPChanged();
    partial void OnNotesChanging(string value);
    partial void OnNotesChanged();
    #endregion
		
		public SANPHAM()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IdSanPham", AutoSync=AutoSync.OnInsert, DbType="BigInt NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public long IdSanPham
		{
			get
			{
				return this._IdSanPham;
			}
			set
			{
				if ((this._IdSanPham != value))
				{
					this.OnIdSanPhamChanging(value);
					this.SendPropertyChanging();
					this._IdSanPham = value;
					this.SendPropertyChanged("IdSanPham");
					this.OnIdSanPhamChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HinhSP", DbType="NVarChar(MAX)")]
		public string HinhSP
		{
			get
			{
				return this._HinhSP;
			}
			set
			{
				if ((this._HinhSP != value))
				{
					this.OnHinhSPChanging(value);
					this.SendPropertyChanging();
					this._HinhSP = value;
					this.SendPropertyChanged("HinhSP");
					this.OnHinhSPChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TenSP", DbType="NVarChar(MAX)")]
		public string TenSP
		{
			get
			{
				return this._TenSP;
			}
			set
			{
				if ((this._TenSP != value))
				{
					this.OnTenSPChanging(value);
					this.SendPropertyChanging();
					this._TenSP = value;
					this.SendPropertyChanged("TenSP");
					this.OnTenSPChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GiaGoc", DbType="NVarChar(MAX)")]
		public string GiaGoc
		{
			get
			{
				return this._GiaGoc;
			}
			set
			{
				if ((this._GiaGoc != value))
				{
					this.OnGiaGocChanging(value);
					this.SendPropertyChanging();
					this._GiaGoc = value;
					this.SendPropertyChanged("GiaGoc");
					this.OnGiaGocChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GiaSP", DbType="NVarChar(MAX)")]
		public string GiaSP
		{
			get
			{
				return this._GiaSP;
			}
			set
			{
				if ((this._GiaSP != value))
				{
					this.OnGiaSPChanging(value);
					this.SendPropertyChanging();
					this._GiaSP = value;
					this.SendPropertyChanged("GiaSP");
					this.OnGiaSPChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IdDM", DbType="BigInt")]
		public System.Nullable<long> IdDM
		{
			get
			{
				return this._IdDM;
			}
			set
			{
				if ((this._IdDM != value))
				{
					this.OnIdDMChanging(value);
					this.SendPropertyChanging();
					this._IdDM = value;
					this.SendPropertyChanged("IdDM");
					this.OnIdDMChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MoTa", DbType="NVarChar(MAX)")]
		public string MoTa
		{
			get
			{
				return this._MoTa;
			}
			set
			{
				if ((this._MoTa != value))
				{
					this.OnMoTaChanging(value);
					this.SendPropertyChanging();
					this._MoTa = value;
					this.SendPropertyChanged("MoTa");
					this.OnMoTaChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ChiTietSP", DbType="NVarChar(MAX)")]
		public string ChiTietSP
		{
			get
			{
				return this._ChiTietSP;
			}
			set
			{
				if ((this._ChiTietSP != value))
				{
					this.OnChiTietSPChanging(value);
					this.SendPropertyChanging();
					this._ChiTietSP = value;
					this.SendPropertyChanged("ChiTietSP");
					this.OnChiTietSPChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Notes", DbType="NVarChar(MAX)")]
		public string Notes
		{
			get
			{
				return this._Notes;
			}
			set
			{
				if ((this._Notes != value))
				{
					this.OnNotesChanging(value);
					this.SendPropertyChanging();
					this._Notes = value;
					this.SendPropertyChanged("Notes");
					this.OnNotesChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.TAIKHOAN")]
	public partial class TAIKHOAN : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private long _IdTaiKhoan;
		
		private string _Username;
		
		private string _Password;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdTaiKhoanChanging(long value);
    partial void OnIdTaiKhoanChanged();
    partial void OnUsernameChanging(string value);
    partial void OnUsernameChanged();
    partial void OnPasswordChanging(string value);
    partial void OnPasswordChanged();
    #endregion
		
		public TAIKHOAN()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IdTaiKhoan", AutoSync=AutoSync.OnInsert, DbType="BigInt NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public long IdTaiKhoan
		{
			get
			{
				return this._IdTaiKhoan;
			}
			set
			{
				if ((this._IdTaiKhoan != value))
				{
					this.OnIdTaiKhoanChanging(value);
					this.SendPropertyChanging();
					this._IdTaiKhoan = value;
					this.SendPropertyChanged("IdTaiKhoan");
					this.OnIdTaiKhoanChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Username", DbType="NVarChar(50)")]
		public string Username
		{
			get
			{
				return this._Username;
			}
			set
			{
				if ((this._Username != value))
				{
					this.OnUsernameChanging(value);
					this.SendPropertyChanging();
					this._Username = value;
					this.SendPropertyChanged("Username");
					this.OnUsernameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Password", DbType="NChar(10)")]
		public string Password
		{
			get
			{
				return this._Password;
			}
			set
			{
				if ((this._Password != value))
				{
					this.OnPasswordChanging(value);
					this.SendPropertyChanging();
					this._Password = value;
					this.SendPropertyChanged("Password");
					this.OnPasswordChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.TINTUC")]
	public partial class TINTUC : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private long _IdNews;
		
		private string _TieuDe;
		
		private string _MoTa;
		
		private string _NoiDung;
		
		private string _ImagePath;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdNewsChanging(long value);
    partial void OnIdNewsChanged();
    partial void OnTieuDeChanging(string value);
    partial void OnTieuDeChanged();
    partial void OnMoTaChanging(string value);
    partial void OnMoTaChanged();
    partial void OnNoiDungChanging(string value);
    partial void OnNoiDungChanged();
    partial void OnImagePathChanging(string value);
    partial void OnImagePathChanged();
    #endregion
		
		public TINTUC()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IdNews", AutoSync=AutoSync.OnInsert, DbType="BigInt NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public long IdNews
		{
			get
			{
				return this._IdNews;
			}
			set
			{
				if ((this._IdNews != value))
				{
					this.OnIdNewsChanging(value);
					this.SendPropertyChanging();
					this._IdNews = value;
					this.SendPropertyChanged("IdNews");
					this.OnIdNewsChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TieuDe", DbType="NVarChar(MAX)")]
		public string TieuDe
		{
			get
			{
				return this._TieuDe;
			}
			set
			{
				if ((this._TieuDe != value))
				{
					this.OnTieuDeChanging(value);
					this.SendPropertyChanging();
					this._TieuDe = value;
					this.SendPropertyChanged("TieuDe");
					this.OnTieuDeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MoTa", DbType="NVarChar(MAX)")]
		public string MoTa
		{
			get
			{
				return this._MoTa;
			}
			set
			{
				if ((this._MoTa != value))
				{
					this.OnMoTaChanging(value);
					this.SendPropertyChanging();
					this._MoTa = value;
					this.SendPropertyChanged("MoTa");
					this.OnMoTaChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NoiDung", DbType="NVarChar(MAX)")]
		public string NoiDung
		{
			get
			{
				return this._NoiDung;
			}
			set
			{
				if ((this._NoiDung != value))
				{
					this.OnNoiDungChanging(value);
					this.SendPropertyChanging();
					this._NoiDung = value;
					this.SendPropertyChanged("NoiDung");
					this.OnNoiDungChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ImagePath", DbType="NVarChar(MAX)")]
		public string ImagePath
		{
			get
			{
				return this._ImagePath;
			}
			set
			{
				if ((this._ImagePath != value))
				{
					this.OnImagePathChanging(value);
					this.SendPropertyChanging();
					this._ImagePath = value;
					this.SendPropertyChanged("ImagePath");
					this.OnImagePathChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
