# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `google_drive` gem.
# Please instead update this file by running `bin/tapioca gem google_drive`.

# typed: true

module GoogleDrive
  class << self
    def login_with_oauth(client_or_access_token, proxy = T.unsafe(nil)); end
    def saved_session(config = T.unsafe(nil), proxy = T.unsafe(nil), client_id = T.unsafe(nil), client_secret = T.unsafe(nil)); end
  end
end

class GoogleDrive::AccessTokenCredentials
  def initialize(access_token); end

  def access_token; end
  def apply!(headers); end
end

class GoogleDrive::Acl
  include ::GoogleDrive::Util
  include ::Enumerable
  extend ::Forwardable

  def initialize(session, file); end

  def [](*args, &block); end
  def delete(entry); end
  def each(*args, &block); end
  def inspect; end
  def push(params_or_entry, options = T.unsafe(nil)); end
  def size(*args, &block); end
  def update_role(entry); end
end

class GoogleDrive::AclEntry
  include ::GoogleDrive::Util

  def initialize(params_or_api_permission, acl = T.unsafe(nil)); end

  def acl; end
  def additional_roles; end
  def allow_file_discovery; end
  def api_permission; end
  def api_permission=(_arg0); end
  def domain; end
  def email_address; end
  def id; end
  def inspect; end
  def params; end
  def role; end
  def role=(role); end
  def scope; end
  def scope_type; end
  def type; end
  def value; end
  def with_key; end
  def with_link; end

  private

  def convert_params(orig_params); end
end

class GoogleDrive::ApiClientFetcher
  def initialize(authorization, client_options, request_options); end

  def drive; end
  def request_raw(method, url, data, extra_header, _auth); end
  def sheets; end
end

class GoogleDrive::ApiClientFetcher::Response
  def initialize(code, body); end

  def body; end
  def code; end
end

class GoogleDrive::AuthenticationError < ::GoogleDrive::ResponseCodeError; end

class GoogleDrive::Collection < ::GoogleDrive::File
  def add(file); end
  def collection_feed_url; end
  def contents(params = T.unsafe(nil), &block); end
  def contents_url; end
  def create_file(title, file_properties = T.unsafe(nil)); end
  def create_spreadsheet(title, file_properties = T.unsafe(nil)); end
  def create_subcollection(title, file_properties = T.unsafe(nil)); end
  def create_subfolder(title, file_properties = T.unsafe(nil)); end
  def documents(params = T.unsafe(nil), &block); end
  def file_by_name(title); end
  def file_by_title(title); end
  def files(params = T.unsafe(nil), &block); end
  def remove(file); end
  def root?; end
  def spreadsheets(params = T.unsafe(nil), &block); end
  def subcollection_by_title(title); end
  def subcollections(params = T.unsafe(nil), &block); end
  def subfolder_by_name(title); end
  def subfolders(params = T.unsafe(nil), &block); end
  def upload_from_file(path, title = T.unsafe(nil), params = T.unsafe(nil)); end
  def upload_from_io(io, title = T.unsafe(nil), params = T.unsafe(nil)); end
  def upload_from_string(content, title = T.unsafe(nil), params = T.unsafe(nil)); end

  protected

  def file_by_name_with_type(title, type); end
  def file_by_title_with_type(title, type); end

  private

  def files_with_type(type, params = T.unsafe(nil), &block); end
end

class GoogleDrive::Config
  def initialize(config_path); end

  def client_id; end
  def client_id=(_arg0); end
  def client_secret; end
  def client_secret=(_arg0); end
  def refresh_token; end
  def refresh_token=(_arg0); end
  def save; end
  def scope; end
  def scope=(_arg0); end
  def type; end
  def type=(_arg0); end

  private

  def to_json; end
end

GoogleDrive::Config::FIELDS = T.let(T.unsafe(nil), Array)
class GoogleDrive::Error < ::RuntimeError; end

class GoogleDrive::File
  include ::GoogleDrive::Util
  extend ::Forwardable

  def initialize(session, api_file); end

  def acl(params = T.unsafe(nil)); end
  def acl_feed_url; end
  def api_file; end
  def available_content_types; end
  def copy(title, file_properties = T.unsafe(nil)); end
  def delete(permanent = T.unsafe(nil)); end
  def document_feed_url; end
  def download_to_file(path, params = T.unsafe(nil)); end
  def download_to_io(io, params = T.unsafe(nil)); end
  def download_to_string(params = T.unsafe(nil)); end
  def duplicate(title, file_properties = T.unsafe(nil)); end
  def export_as_file(path, format = T.unsafe(nil)); end
  def export_as_string(format); end
  def export_to_io(io, format); end
  def human_url; end
  def inspect; end
  def name(params = T.unsafe(nil)); end
  def reload_metadata; end
  def rename(title); end
  def resource_id; end
  def resource_type; end
  def title(params = T.unsafe(nil)); end
  def title=(title); end
  def update_from_file(path, params = T.unsafe(nil)); end
  def update_from_io(io, params = T.unsafe(nil)); end
  def update_from_string(content, params = T.unsafe(nil)); end

  private

  def export_to_dest(dest, format); end
end

GoogleDrive::Folder = GoogleDrive::Collection

class GoogleDrive::List
  include ::Enumerable

  def initialize(worksheet); end

  def [](index); end
  def []=(index, hash); end
  def each(&_block); end
  def get(index, key); end
  def input_value(index, key); end
  def keys; end
  def keys=(ary); end
  def numeric_value(index, key); end
  def push(hash); end
  def set(index, key, value); end
  def size; end
  def to_hash_array; end

  private

  def key_to_col(key); end
end

class GoogleDrive::ListRow
  include ::Enumerable
  extend ::Forwardable

  def initialize(list, index); end

  def ==(other); end
  def ===(other); end
  def [](key); end
  def []=(key, value); end
  def assoc(*args, &block); end
  def clear; end
  def each(*args, &block); end
  def each_key(*args, &block); end
  def each_pair(*args, &block); end
  def each_value(*args, &block); end
  def eql?(other); end
  def fetch(*args, &block); end
  def flatten(*args, &block); end
  def has_key?(key); end
  def hash(*args, &block); end
  def include?(key); end
  def input_value(key); end
  def inspect; end
  def invert(*args, &block); end
  def key(*args, &block); end
  def key?(key); end
  def keys(*args, &block); end
  def length(*args, &block); end
  def member?(key); end
  def merge(*args, &block); end
  def merge!(hash); end
  def numeric_value(key); end
  def rassoc(*args, &block); end
  def reject(*args, &block); end
  def replace(hash); end
  def select(*args, &block); end
  def size(*args, &block); end
  def sort(*args, &block); end
  def to_a(*args, &block); end
  def to_hash; end
  def update(hash); end
  def values(*args, &block); end
  def values_at(*args, &block); end
end

class GoogleDrive::ResponseCodeError < ::GoogleDrive::Error
  def initialize(code, body, method, url); end

  def body; end
  def code; end
end

class GoogleDrive::Session
  include ::GoogleDrive::Util
  extend ::GoogleDrive::Util

  def initialize(credentials_or_access_token, proxy = T.unsafe(nil), client_options = T.unsafe(nil), request_options = T.unsafe(nil)); end

  def collection_by_id(id); end
  def collection_by_title(title); end
  def collection_by_url(url); end
  def collections(params = T.unsafe(nil), &block); end
  def create_collection(title, file_properties = T.unsafe(nil)); end
  def create_file(title, file_properties = T.unsafe(nil)); end
  def create_folder(title, file_properties = T.unsafe(nil)); end
  def create_spreadsheet(title = T.unsafe(nil), file_properties = T.unsafe(nil)); end
  def drive; end
  def drive_service; end
  def execute_paged!(opts, &block); end
  def file_by_id(id); end
  def file_by_name(title); end
  def file_by_title(title); end
  def file_by_url(url); end
  def files(params = T.unsafe(nil), &block); end
  def folder_by_id(id); end
  def folder_by_url(url); end
  def folders(params = T.unsafe(nil), &block); end
  def folders_by_name(title); end
  def inspect; end
  def on_auth_fail; end
  def on_auth_fail=(_arg0); end
  def request(method, url, params = T.unsafe(nil)); end
  def root_collection; end
  def root_folder; end
  def sheets_service; end
  def spreadsheet_by_key(key); end
  def spreadsheet_by_name(title); end
  def spreadsheet_by_title(title); end
  def spreadsheet_by_url(url); end
  def spreadsheets(params = T.unsafe(nil), &block); end
  def upload_from_file(path, title = T.unsafe(nil), params = T.unsafe(nil)); end
  def upload_from_io(io, title = T.unsafe(nil), params = T.unsafe(nil)); end
  def upload_from_string(content, title = T.unsafe(nil), params = T.unsafe(nil)); end
  def worksheet_by_url(url); end
  def wrap_api_file(api_file); end

  private

  def convert_response(response, response_type); end
  def upload_from_source(source, title, params = T.unsafe(nil)); end
  def url_to_id(url); end

  class << self
    def from_access_token(access_token, client_options = T.unsafe(nil), request_options = T.unsafe(nil)); end
    def from_config(config, options = T.unsafe(nil)); end
    def from_credentials(credentials, client_options = T.unsafe(nil), request_options = T.unsafe(nil)); end
    def from_service_account_key(json_key_path_or_io, scope = T.unsafe(nil), client_options = T.unsafe(nil), request_options = T.unsafe(nil)); end
    def login_with_oauth(credentials_or_access_token, proxy = T.unsafe(nil)); end
    def new_dummy; end
  end
end

GoogleDrive::Session::DEFAULT_SCOPE = T.let(T.unsafe(nil), Array)

class GoogleDrive::Spreadsheet < ::GoogleDrive::File
  def add_worksheet(title, max_rows = T.unsafe(nil), max_cols = T.unsafe(nil), index: T.unsafe(nil)); end
  def batch_update(requests); end
  def document_feed_url; end
  def download_to_file(_path, _params = T.unsafe(nil)); end
  def download_to_io(_io, _params = T.unsafe(nil)); end
  def download_to_string(_params = T.unsafe(nil)); end
  def key; end
  def spreadsheet_feed_url; end
  def worksheet_by_gid(sheet_id); end
  def worksheet_by_sheet_id(sheet_id); end
  def worksheet_by_title(title); end
  def worksheets; end
  def worksheets_feed_url; end
end

GoogleDrive::Spreadsheet::SUPPORTED_EXPORT_FORMAT = T.let(T.unsafe(nil), Set)

module GoogleDrive::Util
  private

  def concat_url(url, piece); end
  def construct_and_query(args); end
  def construct_query(arg); end
  def convert_params(params); end
  def delegate_api_methods(obj, api_obj, exceptions = T.unsafe(nil)); end
  def encode_query(params); end
  def get_singleton_class(obj); end
  def h(str); end

  class << self
    def concat_url(url, piece); end
    def construct_and_query(args); end
    def construct_query(arg); end
    def convert_params(params); end
    def delegate_api_methods(obj, api_obj, exceptions = T.unsafe(nil)); end
    def encode_query(params); end
    def get_singleton_class(obj); end
    def h(str); end
  end
end

GoogleDrive::Util::EXT_TO_CONTENT_TYPE = T.let(T.unsafe(nil), Hash)
GoogleDrive::Util::IMPORTABLE_CONTENT_TYPE_MAP = T.let(T.unsafe(nil), Hash)

class GoogleDrive::Worksheet
  include ::GoogleDrive::Util

  def initialize(session, spreadsheet, properties); end

  def [](*args); end
  def []=(*args); end
  def add_request(request); end
  def cell_name_to_row_col(cell_name); end
  def cells; end
  def cells_feed_url; end
  def copy_to(spreadsheet_or_id); end
  def csv_export_url; end
  def delete; end
  def delete_rows(row_num, rows); end
  def dirty?; end
  def duplicate; end
  def export_as_file(path); end
  def export_as_string; end
  def gid; end
  def human_url; end
  def index; end
  def index=(index); end
  def input_value(*args); end
  def insert_rows(row_num, rows); end
  def inspect; end
  def list; end
  def list_feed_url; end
  def max_cols; end
  def max_cols=(cols); end
  def max_rows; end
  def max_rows=(rows); end
  def merge_cells(top_row, left_col, num_rows, num_cols, merge_type: T.unsafe(nil)); end
  def num_cols; end
  def num_rows; end
  def numeric_value(*args); end
  def properties; end
  def reload; end
  def rows(skip = T.unsafe(nil)); end
  def save; end
  def set_background_color(top_row, left_col, num_rows, num_cols, background_color); end
  def set_number_format(top_row, left_col, num_rows, num_cols, pattern, type: T.unsafe(nil)); end
  def set_text_alignment(top_row, left_col, num_rows, num_cols, horizontal: T.unsafe(nil), vertical: T.unsafe(nil)); end
  def set_text_format(top_row, left_col, num_rows, num_cols, bold: T.unsafe(nil), italic: T.unsafe(nil), strikethrough: T.unsafe(nil), font_size: T.unsafe(nil), font_family: T.unsafe(nil), foreground_color: T.unsafe(nil)); end
  def sheet_id; end
  def spreadsheet; end
  def synchronize; end
  def title; end
  def title=(title); end
  def update_borders(top_row, left_col, num_rows, num_cols, borders); end
  def update_cells(top_row, left_col, darray); end
  def updated; end
  def worksheet_feed_entry; end
  def worksheet_feed_id; end
  def worksheet_feed_url; end

  private

  def extended_value_to_str(extended_value); end
  def format_cells(top_row, left_col, num_rows, num_cols, format, fields); end
  def parse_cell_args(args); end
  def reload_cells; end
  def set_properties(properties); end
  def update_cells_from_api_sheet(api_sheet); end
  def v4_range_object(top_row, left_col, num_rows, num_cols); end
  def validate_cell_value(value); end
end

module GoogleDrive::Worksheet::Colors; end
GoogleDrive::Worksheet::Colors::BLACK = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::BLUE = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::CORNFLOWER_BLUE = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::CYAN = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::DARK_BLUE_1 = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::DARK_CORNFLOWER_BLUE_1 = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::DARK_CYAN_1 = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::DARK_GRAY_1 = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::DARK_GREEN_1 = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::DARK_MAGENTA_1 = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::DARK_ORANGE_1 = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::DARK_PURPLE_1 = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::DARK_RED_1 = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::DARK_RED_BERRY_1 = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::DARK_YELLOW_1 = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::GRAY = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::GREEN = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::MAGENTA = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::ORANGE = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::PURPLE = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::RED = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::RED_BERRY = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::WHITE = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::Colors::YELLOW = T.let(T.unsafe(nil), Google::Apis::SheetsV4::Color)
GoogleDrive::Worksheet::XML_INVALID_CHAR_REGEXP = T.let(T.unsafe(nil), Regexp)